#!bin/bash

#prints free space on disk
diskused=$(df -h | grep "/dev/sda2" | awk '{print $5}')

#prints free memory 
memfree=$( free mh | grep Mem: | awk '{print $7}')

#prints all connections on computer
connections=$( netstat | grep tcp)

#prints 
users=$(who)

echo -en "this is a snap shot of your current system:

 /e34  Disk used: ${diskused}
  
  free memory: $memfree
  
  logged in users: $users
  
  Open internet connections: $connections

"

color info: 
https://misc.flogisoft.com/bash/tip_colors_and_formatting 
