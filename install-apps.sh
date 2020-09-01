#!/bin/bash

func_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	yay -S --noconfirm --needed $1 
    fi
}

###############################################################################
echo "Installation of software"
###############################################################################

list=(
atom
neovim
i3exit
beaver
viewnior
flameshot
gimp
chromium
firefox
hexchat
kdeconnect
remmina
qbittorrent
telegram-desktop
tor-browser
liferea
steam
vlc
clipgrab
quodlibet
handbrake
libreoffice-still
llpp
bashtop
qemu
virt-manager
ebtables
timeshift
gnome-multiwriter
veracrypt
zip
unzip
unrar
p7zip
xarchiver
galculator
gnome-disk-utility
lxappearance
rofi
nitrogen
pcmanfm
bitwarden
udiskie
alacritty
zsh
)

count=0

for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

tput setaf 11;
echo "################################################################"
echo "Software has been installed"
echo "################################################################"
echo;tput sgr0
