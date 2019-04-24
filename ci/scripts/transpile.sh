#!/bin/sh

set -eux

cd source-code

ls

npm run build

cp -r dist ..