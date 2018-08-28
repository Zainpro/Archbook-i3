#!/bin/bash
set -e
##################################################################################################################
# Written to be used on 64 bits computers
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

#Network

sudo pacman -S networkmanager --noconfirm --needed
sudo pacman -S network-manager-applet --noconfirm --needed
sudo systemctl enable NetworkManager.service
sudo systemctl start NetworkManager.service



echo "################################################################"
echo "#########   network management software installed  #############"
echo "################################################################"

