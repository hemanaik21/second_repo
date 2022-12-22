echo "select your choice 1:add 2:sub 3:mul 4:div"
read choice
echo "enter two numbers"
read num1
read num2
if [ $choice -eq 1 ] ;
then
	sum=`expr $num1 + $num2`

	echo "sum of $num1 and $num2 is ${sum}"

elif [ $choice -eq 2 ] ;
then
	if [ $num1 -lt $num2 ];
	then
		temp=$num1
		num1=$num2
		num2=$temp

        sub=`expr $num1 - $num2`
        echo "sub of $num1 and $num2 is ${sub}"
	fi
elif [ $choice -eq 3 ] ;
then
        mul=`expr $num1 \* $num2`

        echo "mul of $num1 and $num2 is ${mul}"
else 

	  div=`expr $num1 / $num2`

        echo "div of $num1 and $num2 is ${div}"

fi


	


