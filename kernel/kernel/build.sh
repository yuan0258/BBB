#!/bin/sh
export PATH=$PATH:/home/yuan/BBB/BBB/u-boot-2013.07/tools
#make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- beaglebone_defconfig
#This step builds the kernel and may take 15-20 minutes or longer
#make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- uImage dtbs
#This step builds the kernel for the BBB
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- uImage-dtb.am335x-boneblack
#Copy image
cp arch/arm/boot/uImage-dtb.am335x-boneblack ../../images/
#This builds the kernel modules and may take 20 minutes or longer
#make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- modules

