#!/bin/bash
for file in $(find . -name "*.tif" -type f)
do
	outfile=$(echo $file|sed 's/_original.tif/.png/')
	echo "sips -s format png $file --out $outfile"
	$(sips -s format png $file --out $outfile >/dev/null 2>&1)
	sleep 1
done
