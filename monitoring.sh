#!/bin/bash

wall "    #Architecture: $(uname -a)
    #CPU physical : $(lscpu | awk 'NR == 5 {printf("%d", $2)}')
    #vCPU : $(grep processor /proc/cpuinfo | wc -l | awk '{printf("%d", $0)}')
    #Memory Usage: $(free --mega | awk 'NR==2{printf("%d/%dMB (%.2f%%)",$3,$2,$3/$2*100)}')
    #Disk Usage: $(df --total -h | grep total | awk '{printf("%d/%dGb (%s)",$3,$2,$5)}')
    #CPU load: $(mpstat | awk 'NR == 4 {printf("%.2f%%",100-$13)}')
    #Last boot: $(who -b | awk '{printf("%s %s",$3,$4)}')
    #LVM use: $(lsblk | awk '{printf $6}' | grep lvm | wc -l | awk '{if($0!="0"){printf("yes")}else{printf("no")}}')
    #Connexions TCP : $(netstat | grep ESTABLISHED | wc -l) ESTABLISHED
    #User log: $(who | wc -l | awk '{printf("%d", $0)}')
    #Network: IP $(hostname -I) $(ip a | awk 'NR==8{printf("(%s)",$2)}')
    #Sudo: $(cat /var/log/sudo/sudo.log | grep COMMAND | wc -l) cmd"
