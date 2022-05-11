#!/bin/bash -x
declare -A Operations

read -p "Enter first number: " a
read -p "Enter first number: " b
read -p "Enter first number: " c

Operations[first_operation]=$(($a+$b*$c))
Operations[sec_operation]=$(($a*$b+$c))
Operations[third_operation]=$(($c+$a/$b))
Operations[fourth_operation]=$(($a%$b+$c))

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

		if [ ${Operation_values[j]} -le ${Operation_values[$(($j+1))]} ]
		then
			temp=${Operation_values[$j]}
			Operation_values[$j]=${Operation_values[$(($j+1))]}
			Operation_values[$(($j+1))]=$temp
		fi
	done
done
echo ${Operation_values[@]}

#sorting the array in ascending order

len=${#Operation_values[@]}
for ((i=0; i<len; i++))
do
	for((j=0; j<len-i-1; j++))
	do

		if [ ${Operation_values[$j]} -gt ${Operation_values[$(($j+1))]} ]
		then
			temp=${Operation_values[$j]}
			Operation_values[$j]=${Operation_values[$(($j+1))]}
			Operation_values[$(($j+1))]=$temp
		fi
	done
done


echo ${Operation_values[*]}


echo ${!Operation_values[@]}
