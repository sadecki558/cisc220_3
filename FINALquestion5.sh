#!/bin/bash
#Josh Burak, Alexander Gadanidis, Kat Pinto, Matthew Sadecki
#10169785 , 10186175, 10168919 , 10179995
#FINAL

for file in /dir/*
do
	sed -i 'ls/^/#Developed in cisc220\n/' $file
done
