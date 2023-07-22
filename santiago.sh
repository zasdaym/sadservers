#!/usr/bin/env bash

first=$(grep -r Alice /home/admin/*.txt | wc -l)

matches=$(grep -c -r Alice /home/admin/*.txt)
for match in $matches; do
    file=$(echo $match | cut -d ':' -f 1)
    count=$(echo $match | cut -d ':' -f 2)
    if [[ $count != "1" ]]; then
        continue
    fi
    let line=$(grep -n Alice $file | cut -d ':' -f 1)+1
    second=$(head -n $line $file | tail -n 1 | tr -d -c '0-9')
    echo "${first}${second}" >/home/admin/solution
    break
done
