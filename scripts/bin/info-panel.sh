#!/bin/sh

t=$(date +"%H:%m")
t="Time:\t\t$t"

volstatus=$(amixer get Master | tail -n 1 | cut -d '[' -f 4 | cut -d ']' -f 1 | sed s/o/O/)
vollevel=$(amixer get Master | tail -n 1 | cut -d '[' -f 2 | cut -d ']' -f 1)
vol="Volume:"
if [ "$volstatus" == "Off" ]
then
    vol="$vol\t\tOff"
else
    vol="$vol\t\t$vollevel"
fi

battpct=$(cat /sys/class/power_supply/BAT0/capacity)
battstatus=$(cat /sys/class/power_supply/BAT0/status)
batt="Battery:\t\t$battpct%"
if [ "$battstatus" == "Charging" ]
then
    batt="$batt\t"
elif [ "$battstatus" == "Discharging" ]
then
    remaining=$(acpi -b | cut -d " " -f 5- | cut -d ":" -f -2)
    batt="$batt\t($remaining remaining)"
fi

notify-send Status "$t\n$vol\n$batt"
