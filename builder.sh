#!/usr/bin/env bash

# Helper function for cloning: gsc = git shallow clone
gsc() {
	git clone --depth=1 -q $@
}

gsc https://github.com/RahifM/android_kernel_xiaomi_sdm845 -b staging/arter97-r11/exp beryllium
cd beryllium
bash build_master.sh

# Toolchains directory
#mkdir toolchains

# Clone GCC
#gsc https://github.com/cyberknight777/gcc-arm64.git -b master toolchains/gcc64
#gsc https://github.com/mvaisakh/gcc-arm.git -b gcc-master toolchains/gcc32

# Clone CLANG
#mkdir toolchains/clang && cd toolchains/clang
#bash <(curl -s https://raw.githubusercontent.com/Neutron-Toolchains/antman/main/antman) -S
#cd ../..

# Clone AnyKernel3
#gsc https://github.com/Tashar02/AnyKernel3.git AnyKernel3

# Clone Kernel Source
#gsc https://github.com/Atom-X-Devs/android_kernel_xiaomi_scarlet.git -b rcu-a13-5.10 Kernel

# Setup Scripts
#mv scarlet.sh Kernel/scarlet.sh
#cd Kernel

# Compile the kernel using CLANG
#bash scarlet.sh clang
