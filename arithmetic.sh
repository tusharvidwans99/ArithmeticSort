#!/bin/bash -x

read -p "Enter first number: " a
read -p "Enter first number: " b
read -p "Enter first number: " c

first_operation=`echo $a+$b*$c | bc -l | awk '{printf "%.2f",$1}'`
sec_operation=`echo $a*$b+$c | bc -l | awk '{printf "%.2f",$1}'`
third_operation=`echo $c+$a/$b | bc -l | awk '{printf "%.2f",$1}'`
fourth_operation=`echo $a%$b+$c | bc -l | awk '{printf "%.2f",$1}'`
