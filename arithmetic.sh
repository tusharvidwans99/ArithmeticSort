#!/bin/bash -x

read -p "Enter first number: " a
read -p "Enter first number: " b
read -p "Enter first number: " c

first_operation=`echo $a+$b*$c | bc -l | awk '{printf "%.2f",$1}'`
sec_operation=`echo $a*$b+$c | bc -l | awk '{printf "%.2f,$1"}'`
