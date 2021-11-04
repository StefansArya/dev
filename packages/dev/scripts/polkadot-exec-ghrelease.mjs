#!/usr/bin/env node
// Copyright 2017-2021 @polkadot/dev authors & contributors
// SPDX-License-Identifier: Apache-2.0

import { importRelative } from './import.cjs';

importRelative('gh-release', 'gh-release/bin/cli.js');
