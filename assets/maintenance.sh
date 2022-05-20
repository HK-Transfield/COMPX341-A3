#!/bin/bash
#
# Name - pipeline.sh
#
# Purpose - Maintanence, places comments in the first line of every .ts (not .tsx) file 
# Harmon Transfield
# 1317381
# -----------------------------------------------------------------

ts_array=()
readarray -d '' ts_array < <(find . -type f -name "*.ts" -not -path "./node_modules/*" -print0)

echo "Files with a .ts extention:"
for ts_file in "${ts_array[@]}"
do
    echo "$ts_file"
    sed -i '1 s/$/ Harmon Transfield, 1317381/' $ts_file
done