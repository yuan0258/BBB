all: uboot

UBOOT_DIR="u-boot-2013.07"

#1.Bootloader - Uboot
uboot:
	make -C $(UBOOT_DIR) am335x_evm CROSS_COMPILE=arm-linux-gnueabi-
	echo "Copy uboot images to images/"
	cp $(UBOOT_DIR)/spl/u-boot-spl.bin images/
	cp $(UBOOT_DIR)/u-boot.img images/

uboot_clean:
	make -C $(UBOOT_DIR) clean CROSS_COMPILE=arm-linux-gnueabi-

#2.Kernel
kernel:
		
clean: uboot_clean
	rm -rf images/*
