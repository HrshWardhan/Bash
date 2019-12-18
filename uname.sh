#!/bin/bash set-e
# Username 
IFS=':'
if [ $# -eq  2 ]
then
    input=$1
    Done=false
    until $Done
    do
        read line || Done=true;
        readarray -d : -t strarr <<< "$line"
        if [ ${strarr[0]} = $2 ]
        then 
            echo ${strarr[4]}
        fi    
    done < $input
else
    exit -1
fi