#!/usr/bin/env bash

git clone https://github.com/PeerioTechnologies/peerio-desktop.git
cd peerio-desktop
npm install

set -e
export NODE_ENV=production

./node_modules/.bin/standard-version
git tag -d `git describe --tags` # Remove latest tag created by standard-version
git push && git push --follow-tags origin master

peerio-desktop-release --repository PeerioTechnologies/peerio-desktop \
                       --overrides PeerioTechnologies/peerio-desktop-futurio \
                       --publish \
                       --tag dev \
                       --nosign
