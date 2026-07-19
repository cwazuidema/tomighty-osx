#!/usr/bin/env bash

set -e

mkdir -p target
xcodebuild -project ../src/Tomighty.xcodeproj -scheme Tomighty -configuration Release -archivePath target/Tomighty.xcarchive archive
rm -rf target/Tomighty.app
cp -R target/Tomighty.xcarchive/Products/Applications/Tomighty.app target/Tomighty.app
