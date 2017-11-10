#!/usr/bin/env bash
cd ..
git clone https://github.com/PeerioTechnologies/peerio-desktop.git
cd peerio-desktop
./scripts/install-win-build-tools.sh
brew link wine
brew link mono
brew link gnu-tar
brew link libicns
brew link graphicsmagick
brew link xz