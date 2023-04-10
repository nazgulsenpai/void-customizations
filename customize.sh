#!/bin/bash
echo "If you haven't yet, you should open [customize.sh] in a text editor and comment/uncomment what you want."
echo "Press [Enter] to continue, [CTRL]+[C] to exit" 
read
sudo xbps-install -Suy qt5ct adwaita-qt numlockx flatpak lumina-calculator
sudo cp -R ./etc / 
sudo cp -R ./usr /
cp ./move-to-home/.bashrc ~/
cp ./move-to-home/.face ~/
cp ./move-to-home/update_adblock.sh ~/
cp ./move-to-home/update.sh ~/
cp -R ./move-to-home/.config ~/
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak override --env=GTK_THEME=Adwaita-dark
echo * soft nofile 1048576 >> /etc/security/limits.conf
echo * hard nofile 1048576 >> /etc/security/limits.conf
sudo update-grub 
