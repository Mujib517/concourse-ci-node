#!/bin/bash
set -eux

cd source-code
ln -s node_modules

npm test

