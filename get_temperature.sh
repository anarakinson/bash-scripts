#!/bin/bash

temps=$(cat /sys/devices/virtual/thermal/thermal_zone[0-9]/temp)
names=$(cat /sys/devices/virtual/thermal/thermal_zone[0-9]/type)

names_l=( $names )
temps_l=( $temps )

#echo ${#names_l[*]}
#echo ${#temps_l[*]}

for i in ${!names_l[@]}
do
    echo "${names_l[$i]} -> ${temps_l[i]}"
done
