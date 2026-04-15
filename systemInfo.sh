#!/bin/bash

echo "----------------------------------"
echo "Your OS is: "
uname -a

echo "----------------------------------"
echo -n "Current user is: "
whoami

echo "----------------------------------"
echo "Your Architecture is: "
lscpu

echo "----------------------------------"
echo -n "Your RAM is: "
free -h

echo "----------------------------------"
echo "Your storage detailed information is: "
df -h

echo "----------------------------------"
echo -n "System uptime:"
uptime -p

echo "----------------------------------"
echo -n "System load:"
cat /proc/loadavg

echo "----------------------------------"
echo "Detailed memory info:"
cat /proc/meminfo | head -20

echo "----------------------------------"
echo "Block devices:"
lsblk

echo "----------------------------------"
echo "IP addresses:"
ip a

echo "----------------------------------"
echo "Routing table:"
ip route

echo "----------------------------------"
echo "Logged in users:"
who

echo "----------------------------------"
echo "OS details:"
cat /etc/os-release

echo "----------------------------------"
echo "Top processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -10

