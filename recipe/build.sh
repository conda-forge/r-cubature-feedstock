#!/bin/bash

export DISABLE_AUTOBREW=1

export CC17=${CC}

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}
