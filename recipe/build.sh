#!/bin/bash

CMAKE_ARGS_EXTRA=""
if [[ "$target_platform" == "osx-arm64" ]]; then
    CMAKE_ARGS_EXTRA="-DFFTW_USE_LONG_DOUBLE=OFF"
fi

cmake -DBUILD_TESTS=OFF $CMAKE_ARGS_EXTRA -DCMAKE_INSTALL_PREFIX=$PREFIX $SRC_DIR -DCMAKE_INSTALL_LIBDIR=lib
make install
