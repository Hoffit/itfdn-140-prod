#!/bin/bash
# Title: security_check.sh
# Date: 11/6/2019
# Author: David Hull
# Purpose: Find all directories that have rwx permission for 'other'/'public'
# Update: 11/12/2019

mylog="myscriptlog.txt"
echo "<<<<<<<<<<<<<<Begin Log Entry: users with root permissions>>>>>>>>>>>>>>" >> $mylog
echo $(date) >> $mylog
echo >> $mylog
#sudo find /. -type d -perm -007 >> $mylog
grep 'wheel' /etc/group >> $mylog
echo >> $mylog
echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<End Log Entry>>>>>>>>>>>>>>>>>>>>>>>>>>>" >> $mylog
echo >> $mylog
