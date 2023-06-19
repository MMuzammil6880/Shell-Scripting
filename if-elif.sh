#!/bin/bash

a=160
b=120
c=110

if [[ $a -gt $b && $a -gt $c ]]
then
echo "the ${a} (a)  is greater"
elif [[ $b -gt $a && $b -gt $c ]]
then
echo "the ${b} (b) is greater"
else
echo "the ${c} (c) is greater"
fi 
