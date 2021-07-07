#!/bin/bash

TOOLCHAIN="arm-linux-gnueabihf" && \
MAJOR="7.5" && \
MINOR="0" && \
DATE="2019.12" && \
ARCH="x86_64" && \
ARCHIVE_BASE="gcc-linaro-${MAJOR}.${MINOR}-${DATE}-${ARCH}_${TOOLCHAIN}" && \
ARCHIVE="$ARCHIVE_BASE.tar.xz" && \
MIRROR="https://releases.linaro.org/components/toolchain/binaries" && \
URL_PATH="${MIRROR}/${MAJOR}-${DATE}/${TOOLCHAIN}/${ARCHIVE}" && \
wget -q --show-progress $URL_PATH && \
tar -xJf $ARCHIVE && \
mkdir -p /toolchain/armv7 && \
mv $ARCHIVE_BASE/* /toolchain/armv7 && \
rm -rf $ARCHIVE_BASE && \
rm -rf $ARCHIVE
