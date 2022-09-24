#!/usr/bin/env sh
for device in $(xinput list | grep 'Mouse' | cut -d'=' -f2 | cut -d'[' -f1)
do
 xinput --set-int-prop $device "libinput Natural Scrolling Enabled" 8 1
done
