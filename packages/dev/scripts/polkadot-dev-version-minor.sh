#!/bin/sh
# Copyright 2017-2018 Jaco Greeff
# This software may be modified and distributed under the terms
# of the ISC license. See the LICENSE file for details.

set -e

if [ -d "packages" ]; then
  lerna publish --skip-git --skip-npm --yes --cd-version minor
fi