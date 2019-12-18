#!/bin/bash 
func(){
    var1=$( ls $1 )
    for f in $var1
    do
        if [[ -f "$1/$f" && ! -f "$2/$f" ]]
        then 
            echo $3$f
            cp $1/$f $2/
        fi
        if [ -d $1/$f ]
        then
            if [ ! -d $2/$f ]
            then
                mkdir $2/$f
            fi 
            func $1/$f $2/$f $3$f/ 
        fi
    done              
}
echo Files copied from $1 to $2 are:
func $1 $2
echo Files copied from $2 to $1 are:
func $2 $1
