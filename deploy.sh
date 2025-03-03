#!/bin/bash

set -e

SCRIPT=$(realpath "$0")
DIR=$(dirname "$SCRIPT")
cd "$DIR" || exit 255

cp ./config.fish /etc/fish/config.fish
cp -r ./conf.d/. /etc/fish/conf.d
cp -r ./functions/. /etc/fish/functions
