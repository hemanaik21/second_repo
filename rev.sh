#/bin/bash
set -x
#echo "enter string to reverse"
#read  str
#len=${#str}
#echo "${len}"
#rev=""
#for((i=$len-1; i>=0; i--))
#do
	#rev="$rev${str:$i:1}"
	
#done
#echo "${rev}"
echo "enter str to reverse"
read str
len=${#str}
rev=""
for((i=$len-1; i>=0; i--))
do
	
        var="${str:$i:1}"
	rev=$rev$var
done
echo "${rev}"
if [ "$str" == "$rev" ];
then
	echo "It's a palindrome"
else
	echo "Not a palindrome"
fi



