#!/bin/bash
discusage=`df -h|head -2|tail -1|awk -F " " '{print $(NF-1)}' |sed "s/%/ /g"`
if [ $discusage -gt 60 ] 
then 
	echo "discusage is in risk take action "
elif [ $discusage -ge 50 ] 
then 
	echo "discuage is near risk check and clean"	
fi
