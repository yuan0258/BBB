#!/bin/sh
cp configs/beaglebone kernel/arch/arm/configs/beaglebone_defconfig
#Download pm image
wget http://arago-project.org/git/projects/?p=am33x-cm3.git\;a=blob_plain\;f=bin/am335x-pm-firmware.bin\;hb=HEAD -O kernel/firmware/am335x-pm-firmware.bin
