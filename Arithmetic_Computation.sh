#!/bin/bash
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

#Store Result In Dictionary
declare -A ArithmeticOperation
ArithmeticOperation[firstresult]=$firstresult
ArithmeticOperation[secondresult]=$secondresult
ArithmeticOperation[thirdresult]=$thirdresult
ArithmeticOperation[fourthresult]=$fourthresult

echo "All Arithmetic Computation Result in Dictionary :" ${ArithmeticOperation[@]}
echo ""

#Read The Dictionary Value To Array
<<EOF 
for(( index=1;index<=${#ArithmeticOperation[@]};index++ ))
do
	array[index]=${ArithmeticOperation[$((index))]}	
done
#Array Result
echo "${array[@]}"
#echo "All Arithmetic Computation Result in Array :" ${array[@]}
EOF


#Read The Dictionary Value to Array
for i in "${ArithmeticOperation[@]}"
do
	#echo $i
	array[i]=$i
done
        echo "Data In Array:"${array[@]}
