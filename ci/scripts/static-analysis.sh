#!/bin/sh
set -eux

cd source-code
ln -s ../node_modules

nodejsscan -d src -o results

missing_headers="$(jq -r .total_count.mis results.json)"
security_issues="$(jq -r .total_count.sec results.json)"

if [ $missing_headers -gt 9 ] 
then 
    echo "missing headers";
    exit 1
fi

if [ $security_issues -gt 0 ] 
then 
    echo "security issues found";
    exit 1
fi

exit 0
