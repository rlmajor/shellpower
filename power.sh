#!/bin/bash
#Options:
#Change the below to whatever your power provider charges you per kWh, you can find it on your bill.
centsperhour=".17"
#End options

#Begin main
clear
echo "How many watts does your device use?:"
read devicewatts
echo "How many hours are you going to run it?"
read hours
watthours=`expr $devicewatts \* $hours`
kwhours=$(($watthours / 1000))
total=`echo $kwhours \* $centsperhour|bc`;
echo "It costs \$$total to run your $devicewatts watt device for $hours hours."
#End main
