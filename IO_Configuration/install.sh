#!/bin/bash

UBUNTU_CODENAME=${UBUNTU_CODENAME:-$(lsb_release -cs)}
if [ "$UBUNTU_CODENAME" == "focal" ]; then
    sudo cp ubuntu_20.04/syscfg.txt /boot/firmware/ -f
elif [ "$UBUNTU_CODENAME" == "jammy" ]; then
    sudo cp ubuntu_22.04/config.txt /boot/firmware/ -f
else
    # noble and future versions
    sudo cp ubuntu_24.04/config.txt /boot/firmware/ -f
fi
