heusecho "===================Setup Export========================="
export ARCH=arm64
export CLANG_TRIPLE=$GITHUB_WORKSPACE/kernel/tool/aarch/bin/aarch64-linux-gnu-
export CROSS_COMPILE=$GITHUB_WORKSPACE/kernel/tool/aarch/bin/aarch64-linux-android-
export CROSS_COMPILE_ARM32=$GITHUB_WORKSPACE/kernel/tool/arm/bin/arm-linux-androideabi-

echo "=========================Clean========================="
rm -rf $KERNEL_PATH/out/ *.zip
make mrproper && git reset --hard HEAD

echo "=========================make========================="
make O=out cepheus_user_defconfig
make O=out
