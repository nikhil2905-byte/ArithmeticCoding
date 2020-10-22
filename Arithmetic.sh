#!/bin/bash -x

echo "enter three integer values"
read -p "first numbr:" a
read -p "second number:" b
read -p "third number:" c

compute1=$(($a + $b * $c))

compute2=$(($a * $b + $c))

compute3=$(($c + $a / $b))

compute4=$(($a % $b + $c))

declare -A  dictionary
dictionary[key]=$compute1
dictionary[key1]=$compute2
dictionary[key2]=$compute3
dictionary[key3]=$compute4

count=0;
for i in ${dictionary[@]}
do
	resultArray[((count++))]=$i;
done
