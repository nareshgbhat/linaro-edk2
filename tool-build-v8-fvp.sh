#/bin/sh
set -e

CROSS_COMPILE=aarch64-linux-gnu-

#ArmVExpress-FVP-AArch64/DEBUG_GCC48/FV/FVP_AARCH64_EFI.fd
TARGET=fvp
DSC_DIR=/ArmVExpress-FVP-AArch64
FD_NAME=FVP_AARCH64_EFI.fd
DEST_DIR=/home/nareshbhat/Projects/xen-work/setup4/uefi-build/linaro/sims/ws64

BUILD=RELEASE
#BUILD=DEBUG

BUILD_ARGS=

../uefi-tools/uefi-build.sh -b ${BUILD} ${TARGET}  ${BUILD_ARGS}

# FVP base model now requires packaging the EFI image.

cp ./Build/${DSC_DIR}/${BUILD}_GCC48/FV/${FD_NAME} /home/nareshbhat/Projects/xen-work/setup4/uefi-build/linaro/sims/ws64

export BL33=`pwd`/Build/${DSC_DIR}/${BUILD}_GCC48/FV/${FD_NAME}
rm -f ../arm-trusted-firmware/build/fvp/release/fip.bin
make -C ../arm-trusted-firmware PLAT=fvp all fip

cp ../arm-trusted-firmware/build/fvp/release/fip.bin /home/nareshbhat/Projects/xen-work/setup4/uefi-build/linaro/sims/ws64
cp ../arm-trusted-firmware/build/fvp/release/bl1.bin /home/nareshbhat/Projects/xen-work/setup4/uefi-build/linaro/sims/ws64

