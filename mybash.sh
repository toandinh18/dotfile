#!/bin/bash

grep -c "alacritty" Alacritty.desktop
grep -c "New" Alacritty.desktop
tmp=$(find . -name "*.desktop" -maxdepth 1)
declare -a array
declare i=0
for index in $tmp
do  
    echo "i=$i"
    echo $index
    array[$i]=$(grep -c "alacritty" $index)
    i=$((i+1))
done
echo ${array[@]}
arr=(prakhar ankit 1 rishabh manish abhinav) 
 
# To print all elements of array 
echo ${arr[@]}   
