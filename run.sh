#!/bin/bash

: "${BIN_TO_RUN:=${1:-bin/voyager_images}}"

while true; do
  find "$(dirname "$BIN_TO_RUN")" -type f -name "$(basename "$BIN_TO_RUN")" | entr -dcs "$BIN_TO_RUN"
  sleep 2
done
