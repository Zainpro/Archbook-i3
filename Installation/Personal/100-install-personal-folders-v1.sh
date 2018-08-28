#!/bin/bash
set -e
##################################################################################################################
# Written to be used on 64 bits computers
# Author : Zain
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "Creating common folders in correct language"
xdg-user-dirs-update
xdg-user-dirs-update --force

echo "Creating private folders we use later"

[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"
[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"
[ -d $HOME"/Desktop" ] || mkdir -p $HOME"/Desktop"
[ -d $HOME"/Documents" ] || mkdir -p $HOME"/Documents"
[ -d $HOME"/Downloads" ] || mkdir -p $HOME"/Downloads"
[ -d $HOME"/DATA" ] || mkdir -p $HOME"/DATA"
[ -d $HOME"/Music" ] || mkdir -p $HOME"/Music"
[ -d $HOME"/Pictures" ] || mkdir -p $HOME"/Pictures"
[ -d $HOME"/Videos" ] || mkdir -p $HOME"/Videos"

#[ -d $HOME"/Dropbox" ] || mkdir -p $HOME"/Dropbox" will be created by dropbox
#[ -d $HOME"/Insync" ] || mkdir -p $HOME"/Insync"
#[ -d $HOME"/.config/gtk-3.0" ] || mkdir -p $HOME"/.config/gtk-3.0"
#[ -d $HOME"/.config/conky" ] || mkdir -p $HOME"/.config/conky"
#[ -d $HOME"/.config/variety" ] || mkdir -p $HOME"/.config/variety"
#[ -d $HOME"/.config/variety/scripts" ] || mkdir -p $HOME"/.config/variety/scripts"

echo "################################################################"
echo "###       personal folders created or existed already       ####"
echo "################################################################"
