#!/bin/bash -x
declare -A Operations

read -p "Enter first number: " a
read -p "Enter first number: " b
read -p "Enter first number: " c

Operations[first_operation]=`echo $a+$b*$c | bc -l | awk '{printf "%.2f",$1}'`
Operations[sec_operation]=`echo $a*$b+$c | bc -l | awk '{printf "%.2f",$1}'`
Operations[third_operation]=`echo $c+$a/$b | bc -l | awk '{printf "%.2f",$1}'`
Operations[fourth_operation]=`echo $a%$b+$c | bc -l | awk '{printf "%.2f",$1}'`

echo ${Operations[@]}

Operation_values[$i]=${Operations[first_operation]}
Operation_values[$i]=${Operations[sec_operation]}
Operation_values[$i]=${Operations[third_operation]}
Operation_values[$i]=${Operations[fourth_operation]}
