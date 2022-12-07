#!/bin/bash

export DISABLE_AUTOBREW=1

# get updated config.guess and config.sub
cp $BUILD_PREFIX/share/gnuconfig/config.{sub,guess} src/Cuba-4.2/.

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}
