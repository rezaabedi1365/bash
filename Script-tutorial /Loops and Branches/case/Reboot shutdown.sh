#!/bin/bash
read -n 1 -p "Would you like to exit, reboot, or shutdown? (E/r/s) " ans;

case $ans in
    r|R)
        sudo reboot;;
    s|S)
        sudo poweroff;;
    *)
        exit;;
esac
