#!/bin/bash 
var1=$( ls $1 )
for fil in $var1
    if [[ -f $1/$fil && ! -f $2/$fil ]]
    then
      echo $3$p
      cp $1/$p $2/
    fi
    if [ -d $1/$p ]
    then
      if [ ! -d $2/$p ]; then
        mkdir $2/$p
      fi
      q=$3
      bash backup.sh $1/$p $2/$p $q$p/
    fi
var1=$( ls $2 )
for fil in $var1
    if [[ -f $2/$fil && ! -f $1/$fil ]]
    then
      echo $3$p
      cp $2/$p $1/
    fi
    if [ -d $2/$p ]
    then
      if [ ! -d $1/$p ]; then
        mkdir $1/$p
      fi
      q=$3
      bash backup.sh $2/$p $1/$p $q$p/
    fi
