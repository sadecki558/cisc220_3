#!/bin/bash
#Josh Burak, Alexander Gadanidis, Kat Pinto, Matthew Sadecki
#10169785, 10186175, 10168919, 10179995
#FINAL

>newFile.txt
awk '{ print $2 "	" $1}' student_courses.txt > newFile.txt
awk 'FNR==NR {a[$1]=$2 FS $3;next} {print $0, a[$1]}' courses.txt newFile.txt > cIDsIDcName.txt
awk '{ print $2 "	" $3}' cIDsIDcName.txt > newFile.txt
awk 'FNR==NR {a[$1]=$2 FS $3;next} {print $0, a[$1]}' students.txt newFile.txt > cIDsIDcName.txt
awk -F"	" '{print substr($0, index($0,$2))}' cIDsIDcName.txt | awk '{ print $2 "	" $1}'| (read -r; printf "%s\n" "$REPLY"; sort)



