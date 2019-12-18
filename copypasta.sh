#!/bin/bash 
input=$1
Done=false
touch copy.txt
until $Done
do
    read line || Done=true;
    id=$(cut -c-5 <<< "$line")
    if [ $id = "<name" 2> /dev/null ]
    then    
        val="<name val=$2>"
        echo $val
    else
        echo $line
    fi  
done < $input >copy.txt
mv copy.txt $1
