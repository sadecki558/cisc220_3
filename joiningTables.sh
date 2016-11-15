#!/bin/bash
#Josh Burak, Alexander Gadanidis, Kat Pinto, Matthew Sadecki
# , 10186175, , 10179995
>newFile.txt
awk '{ print $2 "	" $1}' student_courses.txt > newFile.txt
awk 'FNR==NR {a[$1]=$2 FS $3;next} {print $0, a[$1]}' courses.txt newFile.txt


