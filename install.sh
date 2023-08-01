#!/bin/bash

echo -e "\e[41mPwnBox Install\e[0m"
echo -e "\e[41mBased off xct/clean and theGuildHall/pwnbox\e[0m"
echo -e "\e[41mUpdated 01.08.2023 \e[24m"
echo ""

#Add in Section about pre-Installing Rust as it breaks normally.
echo -e "\e[41mNOTICE\e[0m"
echo "Issues with Alacritty build require it to be installed differently. Instructions should run automatically however if you encounter issues check the README."
read -s -n 1 -p "Press ANY key to continue."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
sudo git clone https://github.com/jwilm/alacritty
cd alacritty
rustup override set stable
sudo rustup override set stable
cargo build --release && sudo cp target/release/alacritty /usr/local/bin
cd ..

rustup default 1.7.0
#Kali Repo Installs
sudo apt-get update
sudo apt-get install -y build-essential checkinstall autoconf automake autotools-dev m4 meson
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
sudo apt-get install -y libx11-dev freeglut3-dev jq arandr libxcb-shape0-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-render-util0-dev libxcb-shape0-dev libxcb-xfixes0-dev
sudo apt-get install -y arc-theme papirus-icon-theme feh unclutter compton imagemagick python3-pip rofi
sudo apt-get install -y i3blocks i3status i3 i3-wm
sudo apt-get install -y gobuster onedrive oscanner smtp-user-enum snmp feroxbuster flameshot bloodhound neo4j cargo exiftool chisel
clear

#Custom Configs/Appearance Installs
echo -e "\e[41mNOTICE\e[0m"
echo "Your bash/zshrc configs will be overwritten and located in the home directory with .bak."
read -s -n 1 -p "Press ANY key to continue."
sudo mv ~/.zshrc ~/zshrc.bak
sudo mv ~/.bashrc ~/bashrc.bak
sudo mv .bashrc .zshrc ~/
mkdir -p ~/.config/i3 ~/.config/compton ~/.config/rofi ~/.config/alacritty ~/.config/feroxbuster ~/.wallpaper
sudo mv .config/i3/config ~/.config/i3/config
sudo mv .config/feroxbuster/ferox-config.toml ~/.config/feroxbuster/ferox-config.toml
sudo mv .config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
sudo mv .config/i3/i3blocks.conf ~/.config/i3/i3blocks.conf
sudo mv .config/compton/compton.conf ~/.config/compton/compton.conf
sudo mv .config/rofi/config ~/.config/rofi/config
sudo mv .fehbg ~/.fehbg
sudo mv .config/i3/clipboard_fix.sh ~/.config/i3/clipboard_fix.sh
sudo mv vpnbash.sh vpnserver.sh /opt/
sudo chmod +x /opt/vpn*.sh nerdfonts.sh
sudo mv wp1.png wp2.png wp3.jpg ~/.wallpaper
clear

#Reboot
echo -e "\e[41mOTICE\e[0m"
echo "After the script is done a reboot will occur. On the login screen select i3 (top right corner) on the login screen. Once on the desktop use the Github readme for more information."
read -s -n 1 -p "Press ANY key to continue."
cd ..
sudo reboot
