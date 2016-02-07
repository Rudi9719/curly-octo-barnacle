#!/bin/bash
# TrinityCore build script - $1 = Cores to be used
cmake TrinityCore/ -DCMAKE_INSTALL_PREFIX=/wow/$1 -DWITH_WARNINGS=1
make -j $2
make install
