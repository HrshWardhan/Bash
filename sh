#!/bin/bash
# A simple variable example
var=null
if [ $# -eq  1 ]
then
    var=$( ls $1 ) 
    count=0
    for name in $var
    do 
        ((count++))
    #echo $count $name
    done    
    echo $count
else
    var=$( ls $1 )
    for name in $var
    do 
        if [ "${name: -${#2}}" == "$2" ]
        then
            ((count++))
             #echo $count $name
        fi    
    done    
    echo $count
fi