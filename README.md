# CollabOS
[![Build Status](https://travis-ci.com/mainmachineispi/CollabOS.svg?branch=master)](https://travis-ci.com/mainmachineispi/CollabOS)
## What is it?
*CollabOS* is a 32-bit Operating System designed for use in [Collab VM](computernewb.com/collab-vm/).   
## Features

 - Simplicity

 - 32 *and* 16-bit computations
-------------
# Build Instructions
## Build dependencies
- NASM
- make
- QEMU
- qemu-system (since some distros are confusing you may need to install this seperately)
## Build Instructions
Simply run `make clean && make` 
Do not use `make clean` if you are on Windows, use `make winclean`

-------------
# How to run
## If you built
Simply run `make test`
## If you downloaded from releases
CD into your download folder and run `qemu-system-i386 collabos.bin` (make sure you have qemu and qemu-system installed!)
