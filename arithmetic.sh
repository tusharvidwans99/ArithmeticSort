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
