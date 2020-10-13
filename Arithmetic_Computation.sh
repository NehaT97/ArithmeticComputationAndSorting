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

echo "Index Of Dictionaries:"${!ArithmeticOperation[@]}
echo ""
echo "All Arithmetic Computation Result in Dictionary :" ${ArithmeticOperation[@]}
echo ""


#Read The Dictionary Value to Array
echo""
index=0;
for i in "${ArithmeticOperation[@]}"
do
	
	#echo "I:" $i
	array[index++]=$i
done
        echo "Index of Array:" ${!array[@]}
	echo "Array Data:" ${array[@]}


#Sort data in Descending Order
function DescendingOrder()
{
	for(( i=0; i<${#array[@]}; i++ ))
	do
		for(( j=0; j<${#array[@]}-1; j++ ))
		do
			if (( $(echo "${array[j+1]} > ${array[j]}") ))
			then
				temp=${array[j]}
				array[j]=${array[j+1]}
				array[j+1]=$temp
			fi
		done
	done
	echo ""
	echo "To data descending order :"${array[@]}
}
DescendingOrder ${array[@]}


#Sort Data In Ascending order
function AscendingOrder()
{
        for(( i=0; i<${#array[@]}; i++ ))
        do
                for(( j=0; j<${#array[@]}-1; j++ ))
                do
                        if (( $(echo "${array[j+1]} < ${array[j]}") ))
                        then
                                temp=${array[j]}
                                array[j]=${array[j+1]}
                                array[j+1]=$temp
                        fi
                done
        done
	echo ""
        echo "To data Ascending order : " ${array[@]}
}
AscendingOrder ${array[@]}
 


##END
