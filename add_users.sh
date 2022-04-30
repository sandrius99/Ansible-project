#!/bin/bash

pass=averagepassword
i=0
names=("carlos" "mia" "john" "patrick" "lisa" "peter" "juan" "chris" "jimmy" "admin")
for name in ${names[@]}; do
useradd -g users -m $name
echo $name:$pass$i | chpasswd
((i =i +1))
done
