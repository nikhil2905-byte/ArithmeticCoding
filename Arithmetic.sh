#!/bin/bash -x

echo "enter three integer values"
read -p "first numbr:" a
read -p "second number:" b
read -p "third number:" c

compute1=$(($a + $b * $c));

compute2=$(($a * $b + $c));

compute3=$(($c + $a / $b));

compute4=$(($a % $b + $c));

declare -A  dictionary
dictionary[key]=$compute1;
dictionary[key1]=$compute2;
dictionary[key2]=$compute3;
dictionary[key3]=$compute4;

count=0;
for i in ${dictionary[@]}
do
	resultArray[((count++))]=$i;
done

for ((i=0;i<3;i++))
do
	for ((j=i+1;j<4;j++))
	do
		if ((${resultArray[i]} < ${resultArray[j]}))
		then
			temp=${resultArray[$j]};
			resultArray[$j]=${resultArray[$i]};
			resultArray[$i]=$temp;
		fi
	done
done
echo "Array in Decending order:" ${resultArray[@]};

for ((i=0;i<3;i++))
do
	for ((j=i+1;j<4;j++))
	do
		if ((${resultArray[i]} > ${resultArray[j]}))
		then
			temp=${resultArray[$j]};
			resultArray[$j]=${resultArray[$i]};
			resultArray[$i]=$temp;
		fi
	done
done
echo "Array in Ascending Order:" ${resultArray[@]};
