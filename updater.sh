#!/bin/bash

clear
echo -e "\e[1;31mInitializing Sytem...\e[0m"
sleep 1
echo -e "\e[1;33mAccess granted...\e[0m"
sleep 1

text1="You're Welcome"
text2="Zyn0x - Ahamad"


for i in $(seq 0 ${#text1}); do
   echo -ne "\r\e[1;32m${text1:0:$i}\e[0m"
   sleep 0.05
done

for i in $(seq 0 ${#text2}); do
    echo -ne "\r\e[1;36m${text2:0:$i}\e[0m"
    sleep 0.05
done

echo ""
