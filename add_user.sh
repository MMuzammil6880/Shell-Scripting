#!/bin/bash

add_user()
{
USER=$1
PASS=$2

useradd -m -p $PASS $USER &&  echo "Successfully user add"

}


#MAIN

add_user talha Shapater@34

