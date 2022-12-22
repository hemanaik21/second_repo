#!/bin/bash
echo "enter filename"
read file
while read var
do
	var1=`echo $var`
	len=${#var1}
	rev=""
	for((i=$len-1; i>=0; i--))
	do
		var2=${var1:$i:1}
		rev=$rev$var2
	done
	echo "${rev}"
done<$file

read f
cat $f | sort -nr

