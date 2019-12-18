#!/bin/bash 
input=$1
curr=0
Done=false
until $Done
do
    read -r line || Done=true
    readarray -d " " -t strarr <<< "$line"
    te=$curr
    #echo $curr
    if [ ${strarr[1]:-0}= + 2> /dev/null ]
    then
        curr=`expr $te + ${strarr[0]}`  
    elif [ ${strarr[1]} = - 2> /dev/null ]
    then    
        curr=`expr $te - ${strarr[0]}`        
    elif [ ${strarr[1]} = / 2> /dev/null ]
    then 
        curr=`expr $te / ${strarr[0]}`
    else
        curr=`expr $te \* ${strarr[0]}`
    fi    
done < $input
echo $curr