#!/bin/bash
#if nordvpn gets stuck and wont disconnect this will allow you to disconnect without reboot
nordvpn status
echo
sudo systemctl stop sys-devices-virtual-net-nordlynx.device
sudo systemctl stop sys-subsystem-net-devices-nordlynx.device
sudo systemctl stop nordvpnd.service
sudo systemctl stop nordvpnd.socket
echo all services stopped
echo
systemctl restart nordvpnd.service
echo nordvpn restarted
echo
nordvpn status
echo
echo done
