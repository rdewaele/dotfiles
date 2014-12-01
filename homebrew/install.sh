#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

# Add homebrew taps
brew tap \
	telemachus/homebrew-desc

# Install homebrew packages
brew install \
	bash-completion \
	brew-desc \
	cmake \
	coreutils \
	gist \
	gradle \
	grc \
	htop-osx \
	hub \
	imagemagick \
	mplayershell \
	sloccount \
	tig \
	unrar \
	wget \
	xz

exit 0
