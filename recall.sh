# !/bin/sh
# Title: recall
# Author: David Hull
# Date: 11/12/2019
# Purpose: recall tips and notes from store database file
# Update: 

# variables
store_data="$HOME/scripts/shell/store.db"
if [ "$#" -eq 0 ] ; then
 more $store_data
else
 # note ${PAGER:-more} allows default pager to be used unless nothing set then more used.
 grep -i "$@" $store_data | ${PAGER:-more}
fi
