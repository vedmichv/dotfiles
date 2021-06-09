#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install a modern version of Bash.
brew install bash
# https://github.com/scop/bash-completion 
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget`
brew install wget 

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Remove large files or passwords from Git history like git-filter-branch
brew install bfg
# GNU binary tools for native development
brew install binutils


brew install nmap
# SOcket CAT: netcat on steroids
brew install socat
# TCP/IP packet demultiplexer
brew install tcpflow

# General-purpose data compression with high compression ratio
brew install xz
brew install telnet
brew install mysql
brew install jq
brew install htop

brew install git
brew install git-lfs
brew install ssh-copy-id
brew install tree
brew install go
brew install powershell

brew install kubectl
brew install minikube
brew install kind
brew install kube-ps1
brew install kubectx

brew install tmux
brew install fzf
brew install mc
brew install bat

brew install terraform
brew install terragrunt
brew install ansible
brew install helm
brew install azure-cli

#Docker static analizator
brew install aquasecurity/trivy/trivy
# Education
brew install exercism


# Remove outdated versions from the cellar.
brew cleanup
