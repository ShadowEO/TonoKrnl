TonoKrnl for Nexus 7 (2013)
===========================

Supported OS: Ubuntu Touch 15.04 'Vivid Vervet'

# This readme is incomplete and will be continued. #

# DoubleTap2Wake #
Currently, I am unable to get DT2W to start at boot using upstart.
Will possibly need a change in the ramdisk, or a better way to turn it on from userland. Right now, it gets turned on, but the driver ignores the request while lightdm is starting and while lxc-android-config is starting, but takes the request manually..

Not sure why yet.

To manually enable DT2W, simply `echo 1 > /sys/android_touch/doubletap2wake`

# Status #
The kernel tree is currently in a buildable state, you MUST leave the elementalx governer and msm-sleeper off or it will not build properly 

(msm-sleeper doesn't build right for some reason, I probably missed a cherry-pick somewhere.)

In addition, I have a sane configuration stored in arch/arm/configs/flo_defconfig which includes standard linux features such as binfmt_misc (yes, QEMU userland and WINE work if you resize the system image and install them directly to the image via multiarch. 

Due to how libertine starts it's applications (it uses proot which screws with WINE), WINE cannot be used inside Libertine.

