#!/bin/sh
set -eux

cd source-code
ln -s ../node_modules

pip install nodejsscan

nodejsscan -d src