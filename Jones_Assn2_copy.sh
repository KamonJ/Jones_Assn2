#!bin/bash 

#create a child script (subshell) from parent script by using parentheses
#For example: (command)

#include commands to extract columns for (ID, Year, and Trap.), extract data, and reverse sort data by trappability

#To find the specific snakes with IDs of 10-89, use the grep command and -A
#To extract the correct columns, use the cut command and -f 1-2,4
#To sort the Trap. column in reverse and numerically, use the sort command and -k3gr
#To put the commands together so the script runs in sequence, use the pipe command between every previous command

(

while [ 1 ]

do
	grep 13BTS010 -A 198 BTS_data.txt|cut -f 1-2,4|sort -k3gr|sed '1 s/^/ID          Year  Trappability\n/'|tar cfz Jones_output.gz Jones_Assn2_copy.sh
done
)
