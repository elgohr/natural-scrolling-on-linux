for device in $(xinput list | grep 'Mouse\|Touchpad' | cut -d'=' -f2 | cut -d'[' -f1)
do
xinput -set-button-map $device 1 2 3 5 4
done
