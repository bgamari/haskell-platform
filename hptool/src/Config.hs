{-# LANGUAGE DeriveDataTypeable, GeneralizedNewtypeDeriving, RecordWildCards #-}

module Config
    ( askHpRelease
    , askGhcBinDistTarFile
    , askBuildConfig

    , addConfigOracle
    )
    where

import Control.Applicative ((<$>))
import Data.List (intercalate)
import Data.List.Split (splitOn)
import Development.Shake
import Development.Shake.Classes
import Development.Shake.FilePath

import Types
import Utils (version)


{-
Release and BuildConfig are not used directly in the oracles because writing all
the required instances is possible but lengthly, and Version is missing
instances for both Hashable and Binary. It is easier to just rely on the
generated instances of Show and Read for these, and use String in the oracle.
-}

newtype HpReleaseQ = HpReleaseQ ()
    deriving (Show,Typeable,Eq,Hashable,Binary,NFData)

-- | Provide the Platform release information
-- The release information will be tracked as a dependency

askHpRelease :: Action Release
askHpRelease = read <$> askOracle (HpReleaseQ ())


newtype GhcBinDistTarFileQ = GhcBinDistTarFileQ ()
    deriving (Show,Typeable,Eq,Hashable,Binary,NFData)

-- | Provide the bindist tar file.
-- The filepath will be tracked as a dependency.
askGhcBinDistTarFile :: Action FilePath
askGhcBinDistTarFile = do
    tarFile <- askOracle $ GhcBinDistTarFileQ ()
    need [tarFile]
    return tarFile


newtype BuildConfigQ = BuildConfigQ ()
    deriving (Show,Typeable,Eq,Hashable,Binary,NFData)

-- | Provide the Platform release information
-- The release information will be tracked as a dependency

askBuildConfig :: Action BuildConfig
askBuildConfig = read <$> askOracle (BuildConfigQ ())


addConfigOracle :: Release -> FilePath -> Rules ()
addConfigOracle hpRel tarFile = do
    _ <- addOracle $
            \(HpReleaseQ _) -> return $ show hpRel
    _ <- addOracle $
            \(GhcBinDistTarFileQ _) -> return tarFile
    _ <- addOracle $
            \(BuildConfigQ _) -> either fail (return . show) buildConfig
    return ()
  where
    buildConfig = extractBuildConfig hpRel tarFile


extractBuildConfig :: Release -> FilePath -> Either String BuildConfig
extractBuildConfig hpRel tarFile =
    if ok then Right $ BuildConfig {..}
          else Left $ "extractBuildConfig tar file unparseable: " ++ base
  where
    -- example tarFile: ghc-7.8.0.20140228-x86_64-apple-darwin-lion.tar.bz2
    base0 = dropExtension $ takeFileName tarFile
    base = (if takeExtension base0 == ".tar" then dropExtension else id) base0
    parts = splitOn "-" base
    (prefix : verStr : bcArch : bcOsVendor : bcOs : remainder) = parts
    bcGhcVersion = GhcVersion $ version verStr
    bcOsDistribution = intercalate "-" remainder
    bcHpVersion = relVersion hpRel
    ok = (length parts >= 5) && (prefix == "ghc")
