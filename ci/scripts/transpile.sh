#!/bin/sh

set -eux

cd source-code
ln -s ../node_modules

npm run build

cp -r dist ..