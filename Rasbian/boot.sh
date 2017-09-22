#!/bin/bash
qemu-system-arm -kernel kernel-qemu-4.4.34-jessie -cpu arm1176 -m 256 -machine versatilepb \
 -append "root=/dev/sda2 panic=1 rootfstype=ext4 rw vga=normal console=ttyAMA0" \
 -drive "file=./2017-09-07-raspbian-stretch-lite.img,index=0,media=disk,format=raw" -no-reboot -serial stdio -curses
