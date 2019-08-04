#!/bin/bash



case $1 in
  "download")
            wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.2.6.tar.xz
            ;;
      "tar")
           tar -xf ./linux-5.2.6.tar.xz
           ;;
  "install")
           cd ./linux-5.2.6
           make distclean
           ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make sunxi_defconfig
           ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make -j8 zImage dtbs
           ;;
esac
