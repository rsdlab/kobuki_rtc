#!/bin/bash

mkdir -p build-linux
cd build-linux
export PKG_CONFIG_PATH=/usr/lib64/pkgconfig/
cmake ../
make

cpack -G DEB -D CPACK_PACKAGE_CONTACT=staff@rt-net.jp ../
#cpack -G PackageMaker -D CPACK_PACKAGE_CONTACT=staff@rt-net.jp ../
cd ../
