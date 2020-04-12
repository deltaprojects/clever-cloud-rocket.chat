#!/bin/bash
set -e

RC_VERSION="${RC_VERSION:=3.1.0}" # Set to 3.1.0 if not already set to something else.

curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" | tar xz
cd bundle/programs/server
npm install --production --no-progress
npm cache clear --force
