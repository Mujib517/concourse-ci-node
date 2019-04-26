#!/bin/sh
set -eux

cd source-code
ln -s ../node_modules

nodejsscan -d src -o results.json

jq -r .total_count.mis results.json
jq -r .total_count.good results.json
jq -r .total_count.sec results.json