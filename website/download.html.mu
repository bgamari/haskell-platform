<!DOCTYPE html> <!-- -*- mode: web-mode; engine: ctemplate -*- -->
<html>
    <head>
        <meta charset="utf-8"></meta>
        <title>Download Haskell Platform</title>
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/download.js"></script>

        <link rel="stylesheet" type="text/css" href="stylesheets/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.css" >
        <link rel="stylesheet" type="text/css" href="stylesheets/fonts/Haskell/style.css">
        <link rel="stylesheet" type="text/css" href="stylesheets/hl.css">
        <link rel="stylesheet" type="text/css" href="stylesheets/download.css">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" type="text/css" rel="stylesheet">

        <link rel="icon" type="image/png" href="img/favicon.png">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Haskell Platform is a Haskell distribution with batteries included">
    </head>
    <body class="page-home">
        <div class="wrap">
            <div class="template">
                <nav class="navbar navbar-default">
                    <div class="container">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="/">
                                <span class="logo"></span>
                                Haskell&nbsp;Platform
                            </a>
                        </div>
                        <div class="collapse navbar-collapse">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="#">Downloads</a></li>
                                <li><a href="#">Community</a></li>
                                <li><a href="#">Documentation</a></li>
                                <li><a href="#">Learn</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <div class="header">
                    <div class="container">
                        <div class="row">
                            <div class="span6 col-md-6">
                                <div class="branding">
                                    <span style="background-image: url(img/logo.png)" class="name">Haskell Platform</span>
                                    <span class="summary">
                                        Haskell with batteries included
                                    </span>
                                </div>
                            </div>
                            <div class="span6 col-md-6">
                                <div class="branding">
                                    <span class="tag"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="container discussion" >
                    <div class="row" >
                        <div class="span6 col-md-6" >
                            <h3>Haskell Platform includes</h3>
                            <ul>
                                <li>the Glasgow Haskell Compiler</li>
                                <li>the Cabal build system</li>
                                <li>support for profiling and code coverage analysis</li>
                                <li>35 core <a href="contents.html">packages</a> to get you up and running</li>
                            </ul>
                        </div>
                        <div class="span6 col-md-6" >
                            <h3>About Haskell Platform</h3>
                            <p>The <span class="hp">Haskell Platform</span> is a
                                cross-platform Haskell distribution designed to get
                                you up and running quickly.</p>
                            <p>You get a compiler, development tools, and a set
                                of widely-used packages, making it easy to dive into
                                Haskell.</p>
                        </div>
                    </div>
                </div>

                <div class="container">
                    <h2>Let's get started</h2>
                </div>

                <div class="container found-user-platform" >
                    You appear to be using <strong>unknown</strong>. Here is how
                    you can install the Haskell Platform on your system,
                </div>

                <div class="container unknown-user-platform" >
                    Find your operating system of choice below and follow the
                    instructions to install the Haskell Platform on your system.
                </div>

                <div class="container" id="platforms">
                    <h2 class="other-platforms">Other Operating Systems</h2>
                    <section class="downloads-platform container" data-os="osx" id="osx">
                        <div class="platform-name"><img src="img/os-osx.svg" alt="Mac OS X logo"> <h2>Mac OS X</h2></div>
                        <a class="expander" href="#osx"><div>
                            <img src="img/expand-piece.svg" class="expand-1">
                            <img src="img/expand-piece.svg" class="expand-2">
                            <img src="img/expand-piece.svg" class="expand-3">
                        </div></a>
                        <div class="content">
                            <p>
                                The latest version of the Haskell Platform for Mac OS X is
                                <strong>2015.01.2</strong>. Note that the
                                Haskell Platform is only compatible with
                                <strong>OS X 10.6 and later</strong>.</p>
                            <p> To get started perform these steps,</p>

                            <ol class="install-steps">
                                <li>
                                    <div class="step-number">1</div>
                                    <div class="step-body">
                                        <p>Download the installer disk image,</p>
                                        <div class="download-btn">
                                            <a href="{{url}}" class="btn btn-haskell" role="button">
                                                <i class="fa fa-download"></i> Download
                                            </a>
                                        </div>

                                        <div class="download-hash">
                                            You can verify the authenticity of this file by
                                            checking its <strong>SHA-1</strong> hash,
                                            <code>deadbeef10918383990a7d97d98789e6a9698b</code>.
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="step-number">2</div>
                                    <div class="step-body">Run the installer.</div>
                                </li>
                                <li>
                                    <div class="step-number">3</div>
                                    <div class="step-body">Follow the instructions.</div>
                                </li>
                            </ol>
                        </div>
                    </section>

                    <section class="downloads-platform container" data-os="windows" id="windows">
                        <div class="platform-name"><img src="img/os-windows.svg" alt="Windows logo"> <h2>Windows</h2></div>
                        <a class="expander" href="#windows"><div>
                            <img src="img/expand-piece.svg" class="expand-1">
                            <img src="img/expand-piece.svg" class="expand-2">
                            <img src="img/expand-piece.svg" class="expand-3">
                        </div></a>
                        <div class="content">
                            <p>
                                The latest version of the Haskell Platform for Windows is
                                <strong>2015.01.2</strong>.</p>
                            <p> To get started perform these steps,</p>

                            <ol class="install-steps">
                                <li>
                                    <div class="step-number">1</div>
                                    <div class="step-body">
                                        <p>Download the installer,</p>
                                        <div class="download-btn">
                                            <a href="{{url}}" class="btn btn-haskell" role="button">
                                                <i class="fa fa-download"></i> Download
                                            </a>
                                        </div>

                                        <div class="download-hash">
                                            You can verify the authenticity of this file by
                                            checking its <strong>SHA-1</strong> hash,
                                            <code>deadbeef10918383990a7d97d98789e6a9698b</code>.
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="step-number">2</div>
                                    <div class="step-body">Run the installer.</div>
                                </li>
                                <li>
                                    <div class="step-number">3</div>
                                    <div class="step-body">Follow the instructions.</div>
                                </li>
                            </ol>
                        </div>
                    </section>

                    <section class="downloads-platform" data-os="linux" id="linux">
                        <div class="platform-name"><img src="img/os-linux.svg" alt="Linux logo"> <h2>Linux</h2></div>
                        <a class="expander" href="#linux"><div>
                            <img src="img/expand-piece.svg" class="expand-1">
                            <img src="img/expand-piece.svg" class="expand-2">
                            <img src="img/expand-piece.svg" class="expand-3">
                        </div></a>
                        <div class="content">
                            <p>
                                The latest version of the Haskell Platform for Linux is
                                <strong>2015.01.2</strong>.</p>
                            <p> To get started perform these steps,</p>

                            <ol class="install-steps">
                                <li>
                                    <div class="step-number">1</div>
                                    <div class="step-body">
                                        <p>Download the installation tarball,</p>
                                        <div class="download-btn">
                                            <a href="{{url}}" class="btn btn-haskell" role="button">
                                                <i class="fa fa-download"></i> Download
                                            </a>
                                        </div>

                                        <div class="download-hash">
                                            You can verify the authenticity of this file by
                                            checking its <strong>SHA-1</strong> hash,
                                            <code>deadbeef10918383990a7d97d98789e6a9698b</code>.
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="step-number">2</div>
                                    <div class="step-body">
                                        Extract the tarball using
                                        <pre>$ sudo tar -zx -C /usr \
    -f haskell-platform-2015.01.2.tar.gz</pre>
                                    </div>
                                </li>
                                <!--
                                <li>
                                    <div class="step-number">3</div>
                                    <div class="step-body">
                                        <p>Run the installation script with</p>
                                        <pre>$ ./install-haskell-platform-2015.01.2.sh</pre>

                                        <p>Or instead, if you don't have root access, you can install locally,</p>
                                        <pre>$ ./install-haskell-platform-2015.01.2.sh --user</pre>
                                    </div>
                                </li>
                                -->
                            </ol>
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
