#!/bin/bash
echo "Lucky numbers:"
y=1000;
while [ $y -lt 10000 ]
do
x=$y; digit=0; sum=0;
while [ $x -gt 0 ]
do
digit=$(( $x % 10 )); x=$(( $x / 10 )); sum=$(( $sum + $digit ))
done
done
