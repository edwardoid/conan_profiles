#!/bin/bash

wget -q --show-progress https://liquidtelecom.dl.sourceforge.net/project/raspberry-pi-cross-compilers/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/Buster/GCC%208.3.0/Raspberry%20Pi%201%2C%20Zero/cross-gcc-8.3.0-pi_0-1.tar.gz && \
tar xf cross-gcc-8.3.0-pi_0-1.tar.gz && \
mkdir -p /toolchain/armv6 && \
cp -R cross-pi-gcc-8.3.0-0/* /toolchain/armv6 && \
rm -rf cross-pi-gcc-8.3.0-0*
