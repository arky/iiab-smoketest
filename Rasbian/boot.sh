#!/bin/bash
qemu-system-arm -kernel kernel-qemu-4.4.34-jessie -cpu arm1176 -m 256 -machine versatilepb \
 -append "root=/dev/sda2 panic=1 rootfstype=ext4 rw vga=normal console=ttyAMA0" \
 -drive "file=./2017-09-07-raspbian-stretch-lite.img,index=0,media=disk,format=raw" -no-reboot -serial stdio -curses \
 -net nic,macaddr=52:54:00:12:34:57 -net nic,macaddr=52:54:00:12:34:58  -net socket,connect=127.0.0.1:1234
