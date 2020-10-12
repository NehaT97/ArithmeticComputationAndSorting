#!/bin/bash -x
#Welcome to Arithmetic Computation And Sorting#

#Read User Input
read -p "A:" a
read -p "B:" b
read -p "C:" c

#Display Value 
echo "A:" $a
echo "B:" $b
echo "C:" $c

#FirstOperation

let firstresult=($a+$b)*$c
echo "FirstResult:" $firstresult
