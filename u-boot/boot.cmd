ext2load mmc 0 0x41000000 zImage
ext2load mmc 0 0x45000000 uInitrd
ext2load mmc 0 0x43000000 sun8i-h2-plus-orangepi-zero.dtb
setenv bootargs console=ttyS0,115200 earlyprintk root=/dev/mmcblk0p2 rw rootwait panic=10
bootz 0x41000000 0x45000000 0x43000000
