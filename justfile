set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]

# Add 'just' to the system PATH if it's not already there
add-just-to-path:
    just choco-install-if-not-present just
    just choco-install-if-not-present ripgrep
    just choco-install-if-not-present fd
    just choco-install-if-not-present rancher-desktop    
    just choco-install-if-not-present nerd-fonts-hack
    just choco-install-if-not-present nerd-fonts-ubuntu
    just choco-install-if-not-present llvm
    just choco-install-if-not-present visualstudio2022buildtools
    
# Install the given package with Chocolatey if not installed
choco-install-if-not-present package:
    @powershell -Command "if ((choco list --local-only) -notcontains '{{package}}') {choco install {{package}} -y}"
