#!/bin/sh

#############################
#         Desktop
#############################
sudo apt update -yy
sudo apt upgrade -yy
sudo apt install xorg -yy
sudo apt install firefox-esr -yy
sudo apt install pcmanfm -yy
sudo apt install git -yy
sudo apt install make -yy
sudo apt install gcc -yy
sudo apt install libx11-dev -yy
sudo apt install libxft-dev -yy
sudo apt install libxinerama-dev -yy
sudo apt install lxappearance -yy
sudo apt install awesome -yy
sudo apt install mousepad -yy
sudo apt install mpv -yy
sudo apt install zathura -yy
sudo apt install picom -yy
sudo apt install feh -yy

git clone https://github.com/perrob70/DebianAwesome
mv /home/perrob/DebianAwesome/.config/awesome ~/.config/awesome
mv /home/perrob/DebianAwesome/.config/lf ~/.config/lf
mv /home/perrob/DebianAwesome/.config/suckless ~/.config/suckless