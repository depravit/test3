#!/bin/bash
cat /nfs-server/list.txt | while read out-put
do
   ping -c 1 -w 1 "$output" > /dev/null
   if [$? -eq 0]; then
   echo "Instance $output is up"
   else
   echo "Instance $output is down"
   fi 
done
