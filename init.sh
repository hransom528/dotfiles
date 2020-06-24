#!/bin/bash
#Script to set up software
sudo apt -y update && sudo apt upgrade
sudo apt -y remove firefox

#Accesories
sudo apt -y install git ark gnome-calculator vim vim-common vim-runtime vim-tiny emacsen-common libreoffice-base-core snapd acl diffutils cpio debianutils nano hardinfo
sudo snap install snap-store

#Electronics
sudo apt -y install arduino fritzing 

#Games
sudo apt -y install 2048-qt 

#Graphics
sudo apt -y install blender gimp inkscape mesa-utils netpbm scrot qpdfview xscreensaver xscreensaver-data xscreensaver-data-extra xscreensaver-gl xscreensaver-gl-extra xscreensaver-screensaver-bsod

#Internet/Networking
sudo apt -y install chromium-browser net-tools nmap bluedevil putty thunderbird wireshark mutt ftp vsftpd quassel wget curl transmission samba rsync iw netcat mailutils postfix
sudo snap install nutty
#Misc.
sudo apt -y install gparted timeshift htop powerline python-powerline fonts-powerline virtualbox xterm qps git mtools dosfstools cifs-utils mariadb-common
sudo apt -y install adwaita-icon-theme adwaita-icon-theme-full adwaita-qt conky
sudo snap install discord barrier-kvm cheat conda hello zoom-client rambox

#Programming
sudo apt -y install arduino arduino-core codeblocks cutter ecj clang cmake geany thonny ant apache2 automake c2hs cloc cpp cpp-8 g++ g++-8 gcc gcc-8 golang java-common nodejs python2.7 python3 python-pip python-numpy ruby perl6 perl php openjdk-11-jdk jupyter-client jupyter-console jupyter-core mysql-common mu-editor
#sudo snap install eclipse intellij-idea-community android-studio  dotnet-sdk kotlin kotlin-native jupyter pycharm-community 

#AV
sudo apt -y install openshot vlc audacity rhythmbox pulseaudio

#Wine
sudo apt -y install wine playonlinux wine64 winetricks
sudo dpkg --add-architecture i386

#Sets up Vundle for Vim
echo "Getting Vundle for Vim customization" 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#Copies config files to correct areas
echo "Adding config files"
mkdir ~/build
cp .condarc ~
cp .profile ~
cp .bash_profile ~
cp .bashrc ~
cp conky-startup.sh ~
cp .vimrc ~
vim +PluginInstall +qall

#Gets other Github repos's
echo "Pulling Github repositories"
mkdir ~/Documents/Github
cd ~/Documents/Github
git clone https://github.com/commanderHR1/commanderHR1.github.io

#Finalizes
echo "All done! Make sure to check .rc files and conky for proper config!"
echo "Also configure fonts, theme, and file explorer if you wish."
