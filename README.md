# CollabOS
## What is it?
*CollabOS* is a 32-bit Operating System designed for use in [Collab VM](computernewb.com/collab-vm/).   
## Features

 - Simplicity

 - 32 *and* 16-bit computations
-------------
# Build Instructions
## Build dependencies
- NASM
## Build Instructions
Simply run `mkdir bin && nasm -f bin main.asm -o bin/collabos.bin` 

-------------
# How to run
To run CollabOS, you will need to CD into bin (or if you used releases, CD into your download folder and run 
`qemu-system-i386 collabos.bin`, but note that this requires qemu and qemu-system to be installed.
