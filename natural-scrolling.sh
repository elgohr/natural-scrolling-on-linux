for device in $(xinput list | grep 'Mouse\|Touchpad' | cut -d'=' -f2 | cut -d'[' -f1)
do
distance=$(xinput list-props $device | grep -i "Evdev Scrolling Distance" | cut -d"(" -f2 | cut -d")" -f1)
if [ -z "$distance" ]
  then
    xinput -set-button-map $device 1 2 3 5 4
  else
    xinput set-prop $device $distance -1 -1 -1
fi
done
