#!/bin/bash
set -e

RC_VERSION="${RC_VERSION:=3.0.12}" # Set to 3.0.12 if not already set to something else.

curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" | tar xz
cd bundle/programs/server
npm install --production --no-progress
npm cache clear --force
