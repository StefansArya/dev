#!/bin/bash
# Copyright 2017-2018 @polkadot/dev authors & contributors
# This software may be modified and distributed under the terms
# of the ISC license. See the LICENSE file for details.

set -e

function build_docs () {
  ROOT=$1

  DOCROOT=${ROOT/packages/.}
  typedoc --theme markdown --out ./docs/$DOCROOT $ROOT/src
}

if [ -f "typedoc.js" ]; then
  PACKAGES=( $(ls -1d packages/*) )

  for PACKAGE in "${PACKAGES[@]}"; do
    if [ ! -f "$PACKAGE/.nodoc" ]; then
      echo ""
      echo "*** Executing in $PACKAGE"

      build_docs "$PACKAGE"
    fi
  done

  if [ -f "book.json" ]; then
    echo ""
    echo "*** Building via gitbook"

    yarn gitbook build
    cp -rf ./_book/* ./docs
  fi

  echo ""
  echo "*** Docs completed"
fi

exit 0