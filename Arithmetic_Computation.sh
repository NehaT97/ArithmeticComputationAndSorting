#!/bin/bash -x
#Welcome to Arithmetic Computation And Sorting#

#Read User Input
read -p "A:" a
read -p "B:" b
read -p "C:" c

#Display Value 
echo ""
echo "A:" $a
echo "B:" $b
echo "C:" $c
echo ""

#FirstOperation
let firstresult=($a+$b)*$c
echo "FirstResult:" $firstresult
echo ""

#SecondOperation
let secondresult=($a*$b)+$c
echo "secondResult:" $secondresult
echo ""

#ThirdOperation
let thirdresult=($c+$a)/$b
echo "ThirdResult:" $thirdresult
echo ""

#FourthOperation
let fourthresult=($a%$b)+$c
echo "FourthResult:" $fourthresult
echo ""
