#!/usr/bin/env bash
set -e
LATEST_VER=$(curl -s https://ddragon.leagueoflegends.com/api/versions.json | jq -r '.[0]')
TARGET_DIR="datadragon"
rm $TARGET_DIR -rf
mkdir -p "$TARGET_DIR"
curl -L "https://ddragon.leagueoflegends.com/cdn/dragontail-$LATEST_VER.tgz" | tar -xz -C "$TARGET_DIR"
mv $TARGET_DIR/$LATEST_VER $TARGET_DIR/version