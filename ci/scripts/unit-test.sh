#!/bin/sh
set -eux

cd source-code
ln -s node_modules

ls

npm run test

