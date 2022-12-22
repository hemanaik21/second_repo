#!/bin/bash
c=1
while read var
do
	words=`echo $var | wc -w`
	lines=`echo $var | wc -l`
	char=`echo $var | wc -c`

	echo "Total num of words in line $c is ${words}, lines are ${lines} ,char is  ${char}"
	c=`expr $c + 1`
	var1=`echo $var`
	len=${#var1}
	rev=""
	for((i=$len-1; i>=0; i--))
	do
		var2=${var1:$i:1}
		rev=$rev$var2
	done
	echo "${rev}"
done<emp.txt
