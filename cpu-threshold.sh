#!/bin/bash
#df -hT | grep -vE 'tmpfs|Filesystem' | awk '{print $6}'
#df -hT | grep -vE 'tmpfs|Filesystem' | awk '{print $6}' | cut -d "%" -f1

cpu_threshold=20
cpu_usage=$(top -bn1 | awk '/Cpu/ { print $2}' )
message=""
while IFS= read line;
do
   usage=$(echo $line)
   echo "usage: $usage"
  if [ $usage -ge $cpu_threshold ]
  then
      message+="High cpu usage on: $usage%\n "
  fi
done <<<"$cpu_usage"
echo "message:$message"
echo -e "$message" | mail -s "High cpu usage" raj@subbannadairy.com
