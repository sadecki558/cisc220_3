#!/bin/bash
#Josh Burak, Alexander Gadanidis, Kat Pinto, Matthew Sadecki
# , 10186175, , 10179995
echo "Lucky numbers:"
y=1000;
while [ $y -lt 10000 ]
do
x=$y; digit=0; sum=0;
while [ $x -gt 0 ]
do
digit=$(( $x % 10 )); x=$(( $x / 10 )); sum=$(( $sum + $digit ))
done
x=$sum; sumdigits=0
while [ $x -gt 0 ]
do
digit=$(( $x % 10 )); x=$(( $x / 10 )); sumdigits=$(( $sumdigits + $digit ))
done
if [ $sumdigits -eq 10 ]
then
x=$sumdigits; digits=$(( $x % 10 )); x=$(( $x / 10 )); sumdigits=$(( $sumdigits + $digit ))
fi
if [ $sumdigits -eq 7 ]
then
echo "$y"
fi
y=$(( $y + 1 ))
done
