#!/bin/bash

echo "Hello `whoami` , welcome to `hostname` machine on today `date`"
sleep 3

echo "your systeminfo ***---"

ifconfig | grep inet

sleep 3

echo "****---"
echo " Enter Ctrl+C after the netdisover scan the host"
sudo netdiscover  -i eth0

echo "Enter your Ip"

read Ip

echo "Want to check the ip is alive or not, Enter Yes"
cho "Want to check the ip is alive or not, Enter Yes"
read y
pg=`ping -c 4 $Ip | grep -o "Destination Host Unreachable"`
if [[ "$pg" != "Destination Host Unreachable" && "$y" == "yes" ]]; then
    echo "Pinging go for hacking"
else
    echo "Not Pinging please recheck ip or unable to hack"
fi

nmap -O -sV $Ip

echo " Select 1 for ftp hack or else 2 for exit"

read st

if [ $st -eq 1 ]
then

  msfconsole -r /home/kali/cys015/handler.nmap.rc 
elif [ $st -eq 2 ]
then
        echo "hack for next time good bye"
else
        echo "Thanks for using mitattack tool"
fi



