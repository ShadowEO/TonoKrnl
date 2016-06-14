#!/bin/bash
ARCH=arm SUBARCH=arm make -j7 V=2
cp arch/arm/boot/zImage ./build/zImage
if [ $1 != "" ]; then
	abootimg --create $1 -f ./build/bootimg.cfg -r ./build/initrd.img -k ./build/zImage
else
	$1 = $CWD + "/TonoKrnl-srcbuild.img"
	abootimg --create TonoKrnl-srcbuild.img -f ./build/bootimg.cfg -r ./build/initrd.img -k ./build/zImage
fi
echo "Built boot image in $1."

