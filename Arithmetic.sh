#!/bin/bash -x

echo "enter three integer values"
read -p "first numbr:" a
read -p "second number:" b
read -p "third number:" c

compute1=$(($a + $b * $c))
echo $compute1

compute2=$(($a * $b + $c))
echo $compute2
