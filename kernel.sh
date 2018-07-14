export ARCH=arm64
export SUBARCH=arm64
export CLANG_TRIPLE=aarch64-linux-gnu-
export CROSS_COMPILE=~/toolchain/bin/aarch64-QUVNTNM_TOOLCHAIN-linux-musl-
export CLANG_TCHAIN=~/gcc-prebuilts/bin/aarch64-linux-gnu-gcc-7.3.1
export KBUILD_COMPILER_STRING="$(${CLANG_TCHAIN} --version | head -n 1 | perl -pe 's/\(http.*?\)//gs' | sed -e 's/  */ /g')"
make -C $(pwd) O=out z2_plus_defconfig
make -j4 -C $(pwd) O=out
