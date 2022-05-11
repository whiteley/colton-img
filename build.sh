#!/usr/bin/env bash

set -euo pipefail

function finish {
  set +e
  docker kill nixos-squashfs-builder > /dev/null
  docker rm nixos-squashfs-builder > /dev/null
}
trap finish EXIT

echo ""
echo "Building docker image"
docker build -t nixos-squashfs-builder .

echo ""
echo "Running docker container detached to copy file"
docker run --name nixos-squashfs-builder --detach nixos-squashfs-builder sleep 10m > /dev/null

echo ""
echo "Copying nixos.img"
docker cp -L nixos-squashfs-builder:/tmp/nixos.img .

echo ""
echo ""
echo "Copied img to ./nixos.img"
