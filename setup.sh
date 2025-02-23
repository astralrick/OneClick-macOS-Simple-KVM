#!/bin/bash

sudo apt-get install qemu-system qemu-utils python3 python3-pip -y  # for Ubuntu, Debian, Mint, and PopOS.

./fetch-macOS-v2.py

qemu-img convert BaseSystem.dmg -O raw BaseSystem.img

qemu-img create -f qcow2 macOS.qcow2 64G

sudo ./basic.sh
