#!/bin/sh

set -eux

cd source-code
npm run build

cp -r dist ..