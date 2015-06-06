<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8"></meta>
    <title>Download Haskell Platform</title>
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/main.js"></script>

    <link rel="stylesheet" type="text/css" href="stylesheets/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/fonts/Haskell/style.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/hl.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/haskell-platform.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" type="text/css" rel="stylesheet">

    <link rel="icon" type="image/png" href="img/favicon.png">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Haskell Platform is a batteries-include Haskell distribution">
  </head>
  <body class="page-downloads">
    <div class="wrap">
      <div class="template">
        <nav class="navbar navbar-default">
          <div class="container">
            <div class="navbar-header">
              <a class="navbar-brand" href="/">
                <span class="logo"></span>
                Haskell Platform
              </a>
            </div>
            <div class="collapse navbar-collapse">
              <ul class="nav navbar-nav">
                <li><a href="#">Downloads</a></li>
                <li><a href="#">Community</a></li>
                <li><a href="#">Documentation</a></li>
                <li><a href="#">Learn</a></li>
              </ul>
            </div>
          </div>
        </nav>
        <div class="container"><ol class="breadcrumb"></ol></div>

        <div class="container">
          <h1>Download Haskell Platform</h1>

          <p>
            Haskell Platform is a batteries-included Haskell distribution
            including the GHC compiler, Cabal build system, and 35 of the most
            widely used packages to allow you to get up and running quickly.
          </p>
        </div>

        <div class="container" id="platforms">
          <section class="downloads-platform container" data-os="osx">
            <div class="platform-name"><img src="img/os-osx.svg" alt="Mac OS X logo"> <h2>Mac OS X</h2></div>
            <div class="expander"><a href="#">
                <img src="img/expand-piece.svg" class="expand-1">
                <img src="img/expand-piece.svg" class="expand-2">
                <img src="img/expand-piece.svg" class="expand-3">
            </a></div>
            <div class="content">
              {{#current}}
              <div class="row span12 download-btn">
                {{#files}}{{#isOSX}}
                <a href="{{url}}" class="btn btn-haskell" role="button">
                  Download - {{archBits}} Bits
                </a>
                {{/isOSX}}{{/files}}
              </div>
              {{/current}}

              {{#current}} {{#files}}{{#isOSX}}
              <h4>
                Haskell Platform {{version}} for {{osNameAndArch}} (10.6 or later)
              </h4>
              <div><strong>SHA-1</strong>: <code>{{mHash}}</code></div>
              {{/isOSX}}{{/files}} {{/current}}

              <h3>Download Instructions</h3>
              <ol>
                <li>Double click the package icon to start the installer</li>
                <li>Follow the instructions</li>
              </ol>

              <h3>Notes</h3>
              <div class="expandable">
                <h4>Release Notes:</h4>
                <ul>
                  <li>Works on 10.6, 10.7, 10.8, 10.9, and even 10.10
                    beta!</li>
                  <li>Works with both gcc and clang based systems.</li>
                  <li>Distributed with a build of GHC 7.8.3 that differs from
                    the released bindist in two ways: a) it was built
                    split-objs for smaller resulting executables, b) it
                    includes Cabal-1.18.1.4 which fixes a particularly nasty
                    problem with haddock, -XCPP, and clang based systems.
                    This ghc-7.8.3 bindist is already incorporated into the
                    installer above, but for reference is available
                    here: <a href="download/2014.2.0.0/ghc-7.8.3-x86_64-apple-darwin-r3.tar.bz2">ghc-7.8.3-x86_64-apple-darwin-r3.tar.bz2</a></li>
                  <li>Includes a new experimental <code>activate-hs</code>
                    command that can switch between multiple installed
                    versions of the platform</li>
                  <li>The cabal command is wrapped to provide a smoother file
                    layout on the Mac. The wrapping only updates
                    the <code>~/.cabal/config</code> file the first time you
                    run it. Please pay attention to its output. If you have
                    a custom config file, you'll want to update it, as
                    Cabal's defaults have changed.</li>
                </ul>

                <h4>General Notes:</h4>
                <p><em>The command line development tools are required prior to
                    installation.</em> <br>If you have <tt>/usr/bin/ld</tt>
                  available in a shell, you should be good to go. If not:</p>
                <ul>
                  <li><p>On OS 10.7 or later, choose one of the following:</p>
                    <ul>
                      <li><p>Download and install <strong>Command Line
                            Tools for Xcode</strong>. Despite the name, you
                          don't need Xcode installed!</p></li>

                      <li><p>After installing Xcode (4.3 or later),
                          choose <strong>Preferences</strong>, then pick
                          the <strong>Downloads</strong> panel. There you can
                          download and install the <strong>Command Line
                            Tools</strong> as an optional component. This
                          installs the same package as listed in the above
                          option.</p></li>

                      <li><p>If you have Xcode prior to 4.3, depending on
                          how you installed it, you may already have the
                          command line tools. If not, consider the first
                          option above.</p></li>
                  </ul></li>

                  <li><p>On OS 10.6, 32-bit, use Xcode 3.2 or later: Choose
                      the "Customize…" button during installation and
                      choose <strong>UNIX Development</strong>. 64-bit version
                      requires Xcode 4.1 or later.</p></li>

                  <li><p><em>The command line tools and/or Xcode can be
                        downloaded for free from
                        <a href="http://developer.apple.com">Apple's developer
                        website</a>, you do need to register as a developer (also
                        free).</em></p></li>
                </ul>
              </div>
            </div>
          </section>

          <section class="downloads-platform container" data-os="windows">
            <div class="platform-name"><img src="img/os-windows.svg" alt="Windows logo"> <h2>Windows</h2></div>
            <div class="expander"><a href="#">
                <img src="img/expand-piece.svg" class="expand-1">
                <img src="img/expand-piece.svg" class="expand-2">
                <img src="img/expand-piece.svg" class="expand-3">
            </a></div>
            <div class="content">
              {{#current}}
              <div class="row span12 download-btn">
                {{#files}}{{#isWindows}}
                <a href="{{url}}" class="btn btn-haskell" role="button">
                  Download - {{archBits}} Bits
                </a>
                {{/isWindows}}{{/files}}
              </div>
              {{/current}}
  
              {{#current}} {{#files}}{{#isWindows}}
              <h4>
                Haskell Platform {{version}} for {{osNameAndArch}}
              </h4>
              <div><strong>SHA-1:</strong> <code>{{mHash}}</code></div>
              {{/isWindows}}{{/files}} {{/current}}
  
              <h3>Download Instructions</h3>
              <ol>
                <li>1. Double click the package icon to start the installer</li>
                <li>2. Follow the instructions</li>
              </ol>
  
              <h3>Notes</h3>
              <div class="expandable">
                <h4>Release Notes: </h4>
              </div>
            </div>
          </section>

          <section class="downloads-platform container" data-os="linux">
            <div class="platform-name"><img src="img/os-linux.svg" alt="Linux logo"> <h2>Linux</h2></div>
            <div class="expander"><a href="#">
                <img src="img/expand-piece.svg" class="expand-1">
                <img src="img/expand-piece.svg" class="expand-2">
                <img src="img/expand-piece.svg" class="expand-3">
            </a></div>
            <div class="content">
              {{#current}}
              <div class="row span12 download-btn">
              {{#files}}{{#isLinux}}
              <a href="{{url}}" class="btn btn-haskell" role="button">
                  Download
              </a>
              {{/isLinux}}{{/files}}
              </div>
              {{/current}}

              {{#current}}
              {{#files}}{{#isLinux}}
              <h4>
              Haskell Platform {{version}} for {{osNameAndArch}}
              </h4>
              <div><strong>SHA-1:</strong> <code>{{mHash}}</code></div>
              {{/isLinux}}{{/files}}
              {{/current}}

              <h3>Download Instructions</h3>
              <ol>
              <li>1. Double click the package icon to start the installer</li>
              <li>2. Follow the instructions</li>
              </ol>

              <h3>Notes</h3>
              <div class="expandable">
              <h4>Release Notes: </h4>
              </div>
            </div>
          </section>
        </div>
      </div>
    </div>

    <div class="footer">
      <div class="container">
        <p>
          <span class="item">© 2014–2015 haskell.org</span>
          <span class="item footer-contribute">
            Got changes to contribute?
            <a href="https://github.com/haskell-infra/hl"> Fork or comment on Github</a>
          </span>
          <span class="pull-right">
            <span>Proudly hosted by </span>
            <a href="https://www.rackspace.com/"><img src="/static/img/rackspace.svg?etag=J84VdDuP" alt="rackspace" height="20" width="20"></a>
          </span>
        </p>
      </div>
    </footer>
  </body>
</html>
