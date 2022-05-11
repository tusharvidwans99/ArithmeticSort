#!/bin/bash -x
declare -A Operations

read -p "Enter first number: " a
read -p "Enter first number: " b
read -p "Enter first number: " c

Operations[first_operation]=`echo $a+$b*$c | bc -l | awk '{printf "%.2f",$1}'`
Operations[sec_operation]=`echo $a*$b+$c | bc -l | awk '{printf "%.2f",$1}'`
Operations[third_operation]=`echo $c+$a/$b | bc -l | awk '{printf "%.2f",$1}'`
Operations[fourth_operation]=`echo $a%$b+$c | bc -l | awk '{printf "%.2f",$1}'`

i=0
Operation_values[i++]=${Operations[first_operation]}
Operation_values[i++]=${Operations[sec_operation]}
Operation_values[i++]=${Operations[third_operation]}
Operation_values[i++]=${Operations[fourth_operation]}

#sorting the array in descending order

len=${#Operation_values[@]}
for ((i=0; i<len; i++))
do
	for((j=0; j<len-i-1; j++))
	do

		if [ ${Operation_values[$j]} -lt ${Operation_values[$(($j+1))]} ]
		then
			temp=${Operation_values[$j]}
			Operation_values[$j]=${Operation_values[$(($j+1))]}
			Operation_values[$(($j+1))]=$temp
		fi
	done
done
echo ${Operation_values[*]}


echo ${!Operation_values[@]}
