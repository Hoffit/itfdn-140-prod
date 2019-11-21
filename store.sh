#!/bin/bash
# Title: store.sh
# Date: 11/12/2019
# Author: David Hull
# Purpose: Stores notes
# Update: 

# variables
store_data="$HOME/scripts/shell/store.db"

# start logic here
if [ "$1" = "-h" ];
   then
	echo "Stores commands for later"
elif [ "$#" -eq 0 ];
   then
   	echo "Enter note then quit using Ctrl+D"
   	# note - following cat indicates input from keyboard, also this can be blank also.
   	cat - >> $store_data
else
   echo "$@ >> $store_data"
fi
