#!/bin/bash
set -euo pipefail
shopt -s nullglob
echo "RUNNING example.sh"
echo "  args=(" "$@" ")"
if [ "$COUNT_RECIPES" = true ]; then
  recipes=( metadata/*.yml )
  echo "this repo contains ${#recipes[@]} recipe(s)"
fi
if [ "$COUNT_APKS" = true ]; then
  apks=( repo/*.apk )
  echo "this repo contains ${#apks[@]} APK(s)"
fi
