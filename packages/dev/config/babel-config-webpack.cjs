// Copyright 2017-2020 @polkadot/dev authors & contributors
// SPDX-License-Identifier: Apache-2.0

const plugins = require('./babel-plugins.cjs');
const presets = require('./babel-presets.cjs');

module.exports = {
  generatorOpts: {
    comments: false
  },
  plugins: plugins(true, false),
  presets: presets(true)
};
