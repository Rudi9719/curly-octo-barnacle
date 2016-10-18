#!/bin/bash
# TrinityCore build script - $2 = Cores to be used
#                            $1 = Install prefix
cmake TrinityCore/ -DCMAKE_INSTALL_PREFIX=/wow/$1 -DWITH_WARNINGS=1
make -j $2
make install

cd /wow/$1/SQL\ Changes


echo "Build Complete. Please be sure to run all SQL changes to deviate TrinityCore's pure DB to be Slack Compatible."
