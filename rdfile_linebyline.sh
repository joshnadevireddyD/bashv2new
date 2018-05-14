#!bin/bash
while read -r line
do
  ${2:echo "\$line"}
done < ${1:/path/to/file}
