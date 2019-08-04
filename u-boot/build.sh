#!/bin/bash



case $1 in
  "download")
            git clone https://github.com/u-boot/u-boot.git
            ;;
  "install")
           if [ -d ./u-boot/ ];
           then
             cd ./u-boot/
             make distclean
             make -j4 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- orangepi_zero_defconfig
             make -j4 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-
           else
             echo $PWD "Directory is not exist!"
           fi
esac
