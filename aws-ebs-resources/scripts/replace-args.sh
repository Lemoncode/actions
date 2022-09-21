#!/bin/sh
# Set delimiter
IFS=$'* \\'
for i in $1
do
sed -i "/args:$/a\
\        - $i" "$2"
done
