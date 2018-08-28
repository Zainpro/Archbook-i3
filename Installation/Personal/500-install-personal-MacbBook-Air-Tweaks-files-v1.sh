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


echo "Moving files to optimize MacBook Air new system"

# Disable dhcpcd ARP to improve DHPC connecting speed
sudo cp ABsettings/dhcpcd.conf /etc/

# Enable some kernel modules for fan speed and the temperature sensors:
sudo cp ABsettings/modules /etc/

# Set uo SWAP for hibernation only 
sudo cp ABsettings/99-sysctl.conf /etc/sysctl.d/

# Intel CPU to powersave mode
sudo cp ABsettings/powertop.service /etc/systemd/system/

# Fixing lid closing to suspend
sudo cp ABsettings/logind.conf /etc/systemd/

# Fixing suspend mode
sudo cp ABsettings/90-xhc_sleep.rules /etc/udev/rules.d/

# Add F1…F11 keys to keyboard
sudo cp ABsettings/hid_apple.conf /etc/modprobe.d/

# Trimming everything for powersaving
sudo cp ABsettings/60-snd_hda_intel.conf /etc/modprobe.d/

# Enable powersaving options on Intel
sudo cp ABsettings/60-i915.conf /etc/modprobe.d/



echo "################################################################"
echo "#########      MacBook Air tweak files copied   ################"
echo "################################################################"

