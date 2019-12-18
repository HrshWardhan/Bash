#!/bin/bash 
# Username 
IFS=':'
if [ $# -eq  2 ]
then
    input=$1
    Done=false
    var=null
    flag1=1
    flag2=1
    until $Done
    do
        read line || Done=true;
        readarray -d : -t strarr <<< "$line"
        if [ ${#strarr[@]} -ne 7 ]
        then
            flag2=0
        fi   
        if [ ${strarr[0]} = $2 ]
        then 
            flag1=0
            var=${strarr[4]}
        fi    
    done < $input
    if [ $flag2 -eq 0 ]
    then 
        exit -1
    fi    
    if [ $flag1 -eq 0 ]
    then
        echo $var
    fi    
else
    exit -1
fi