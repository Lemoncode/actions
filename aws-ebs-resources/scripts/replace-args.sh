#!/bin/sh
# Set delimiter
IFS=$'* \\\n'
for i in $1
do
sed -i "/args:$/a\
\        - $i" ./docker-compose.yml
done
