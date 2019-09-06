#!/bin/bash

# sodium
wget https://github.com/jedisct1/libsodium/releases/download/1.0.16/libsodium-1.0.16.tar.gz
tar -zxvf libsodium-*.tar.gz
cd libsodium-1.0.16
./configure
make -j32
make check
make install
cd ..
rm -rf libsodium*
ldconfig

# mbedtls
wget https://github.com/ARMmbed/mbedtls/archive/mbedtls-2.13.0.tar.gz
tar -zxvf mbedtls-*.tar.gz
cd mbedtls-mbedtls-2.13.0
cmake .
make -j32
make install
ldconfig
