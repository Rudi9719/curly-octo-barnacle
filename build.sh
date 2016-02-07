#!/bin/bash
# TrinityCore build script - $1 = Cores to be used
cmake TrinityCore/ -DCMAKE_INSTALL_PREFIX=/home/trinity/server -DWITH_WARNINGS=1
make -j $1
make install
