#!/usr/bin/env bash
cd ..
git clone https://github.com/PeerioTechnologies/peerio-desktop.git
cd peerio-desktop
./scripts/install-win-build-tools.sh
./scripts/deploy-futurio.sh