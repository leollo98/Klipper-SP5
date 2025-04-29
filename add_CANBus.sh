#!/bin/bash

cat << EOF > /etc/network/interfaces.d/can0
auto can0
iface can0 can static
 bitrate 1000000
 up ifconfig \$IFACE txqueuelen 1024
 sudo reboot 
EOF
