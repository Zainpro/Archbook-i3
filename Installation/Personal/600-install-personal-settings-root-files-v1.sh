#!/bin/bash
set -e
##################################################################################################################
# Written to be used on 64 bits computers
# Author : Zain
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################


echo "Moving files to start i3wm"
echo "Using Sardi icons, Arc theme and noto font from previous scripts"

cp ABsettings/.bash_profile ~/
cp ABsettings/.bashrc ~/
cp ABsettings/.gtkrc-2.0 ~/
cp ABsettings/.xinitrc ~/
cp ABsettings/.zlogin ~/
cp ABsettings/.zshrc ~/
cp ABsettings/bookmarks ~/.config/gtk-3.0/
cp ABsettings/settings.ini ~/.config/gtk-3.0/


echo "################################################################"
echo "#########      root files copied                ################"
echo "################################################################"

