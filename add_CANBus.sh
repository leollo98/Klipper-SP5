#!/bin/bash
sudo apt install ifupdown
sudo apt install net-tools

cat << EOF >> /etc/modules
can
gs_usb
EOF

cat << EOF > /etc/network/interfaces.d/can0
auto can0
iface can0 can static
 bitrate 1000000
up ip link set can0 txqueuelen 1024
EOF
