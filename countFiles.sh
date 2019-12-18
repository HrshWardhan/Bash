#!/bin/bash
# Count files at a Directory
if [[ ($# -eq 2 || $# -eq 1) && -d $1 && -r $1 ]]
then
    var=null
    count=0
    if [ $# -eq  1 ]
    then
        var=$( ls $1 ) 
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
else
    exit -1    
fi
