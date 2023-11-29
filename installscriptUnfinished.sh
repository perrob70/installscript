#!/bin/sh

#############################
#         Desktop
#############################

sudo mv /etc/apt/sources.list /etc/apt/sourcesOld.list
sudo echo -e "deb https://deb.debian.org/debian bookworm main contrib non-free-firmware \ndeb-src http://deb.debian.org/debian bookworm main contrib non-free-firmware\ndeb https://deb.debian.org/debian-security/ bookworm-security main contrib non-free-firmware\ndeb-src http://deb.debian.org/debian-security/ bookworm-security main contrib non-free-firmware\ndeb-src http://deb.debian.org/debian-security/ bookworm-security main contrib non-free-firmware
\ndeb https://deb.debian.org/debian bookworm-updates main contrib non-free-firmware\ndeb-src http://deb.debian.org/debian bookworm-updates main contrib non-free-firmware\ndeb http://deb.debian.org/debian bookworm-backports main" > /etc/apt/sources.list

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
sudo apt install libharfbuzz-dev -yy

mkdir /home/perrob/.config/awesome
mkdir /home/perrob/.config/lf
mkdir /home/perrob/.config/suckless

git clone https://github.com/perrob70/DebianAwesome
mv /home/perrob/DebianAwesome/.config/awesome /home/perrob/.config/awesome
mv /home/perrob/DebianAwesome/.config/lf /home/perrob/.config/lf
mv /home/perrob/DebianAwesome/.config/suckless /home/perrob/.config/suckless

cd .config/suckless/dmenu
sudo make clean install

cd ..
cd st
sudo make clean install
