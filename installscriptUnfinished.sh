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

sudo mv $HOME/perrob/installscript/DebianAwesome/.profile $HOME/perrob/
sudo mv $HOME//perrob/installscript/DebianAwesome/.xinitrc $HOME/perrob/

git clone https://github.com/perrob70/DebianAwesome
sudo mv $HOME/perrob/.config/awesome $HOME/perrob/.config/awesomeback
sudo mv $HOME/perrob/installscript/DebianAwesome/.config/awesome $HOME/perrob/.config/
sudo mv $HOME//perrob/installscript/DebianAwesome/.config/lf $HOME/perrob/.config/
sudo mv $HOME/perrob/installscript/DebianAwesome/.config/suckless $HOME/perrob/.config/

cd $HOME/.config/suckless/dmenu
make && sudo make install

cd ../st
make && sudo make install
