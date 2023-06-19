#!/bin/bash

alert=85
backup_date=$(date +'%m/%d/%Y %H:%M:%S')                                                                          
df -H | awk '{print $5 " " $1}'| while read output;
do
  #echo "$output"
  usage=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
  #echo " $usage "
  file_sys=$(echo $output | awk '{print $2}') 
  
  if [ $usage -ge $alert ]
  then
	echo "Critical he boss :O for $file_sys on $backup_date"
  fi	
done

