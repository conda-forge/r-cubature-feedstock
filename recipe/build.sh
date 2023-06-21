#!/bin/bash

export DISABLE_AUTOBREW=1

# get updated config.guess and config.sub
cp $BUILD_PREFIX/share/gnuconfig/config.{sub,guess} src/Cuba-4.2/.

# This package requires CC17, which isn't defined by default
mkdir -p ~/.R
echo -e "CC=$CC
FC=$FC
CXX=$CXX
CXX98=$CXX
CXX11=$CXX
CXX14=$CXX
CXX17=$CXX
CC17=$CC" > ~/.R/Makevars

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}
