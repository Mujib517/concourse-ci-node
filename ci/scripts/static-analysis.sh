#!/bin/sh
set -eux

cd source-code
ln -s ../node_modules

nodejsscan -d src -o results

missing_heders = jq -r .total_count.mis results.json
security_issues = jq -r .total_count.sec results.json

if [ "$missing_heders" -ge 0 ]; then exit 1
if [ "$security_issues" -ge 0 ]; then exit 1

exit 0;
