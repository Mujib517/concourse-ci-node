#!/bin/sh

set -eux

cd source-code
npm install

cp -r node_modules ..

ls