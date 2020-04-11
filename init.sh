#!/bin/bash
#Script to set up software
sudo apt update && sudo apt upgrade

#Accesories
sudo apt install ark gnome-calculator vim vim-common vim-runtime vim-tiny emacsen-comon libreoffice-base-core snapd acl diffutils cpio debianutils nano
sudo snap install snap-store

#Electronics
sudo apt install arduino fritzing 

#Games
sudo apt install 2048-qt mines 

#Graphics
sudo apt install blender gimp inkscape chafa mesa-utils netpbm scrot qpdfview

#Internet/Networking
sudo apt install chromium bluedevil putty thunderbird wireshark mutt ftp vsftpd quassel wget curl transmission samba rsync iw netcat mailutils postfix

#Misc.
sudo apt install gparted timeshift htop powerline python-powerline fonts-powerline virtualbox xterm uxterm qps git mtools dosfstools cifs-utils mariadb-common 
sudo apt install adwaita-icon-theme adwaita-icon-theme-full adwaita-qt conky fahclient
sudo snap install discord barrier-kvm cheat conda dmd hello zoom-client

#Programming
sudo apt install ardunio arduino-core codeblocks cutter ecj clang cmake gambas3 geany thonny ant apache2 automake c2hs cloc cpp cpp-8 g++ g++-8 gcc gcc-8 golang java-common nodejs python2 python3 python-pip python-numpy python-6 ruby perl6 perl php openjdk-11-jdk jupyter-client jupyter-console jupyter-core mysql-common
sudo snap install vscode eclipse intellij-idea-community android-studio  dotnet-sdk kotlin kotlin-native jupyter pycharm-community

#AV
sudo apt install openshot vlc audacity rythmbox pulseaudio

#Wine
sudo apt install wine playonlinux wine64 winetricks
sudo dpkg --add-architecture i386

#Sets up Vundle for Vim
echo "Getting Vundle for Vim customization" 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#Copies config files to correct areas
echo "Adding config files"
cp .condarc ~
cp .profile ~
cp .bash_profile ~
cp .bashrc ~
cp conky-startup.sh ~
cp -r .conky/ ~
cp vimrc ~
cp -r .git/ ~

#Gets other Github repos's
echo "Pulling Github repositories"
mkdir ~/Documents/Github
cd ~/Documents/Github
git clone https://github.com/commanderHR1/commanderHR1.github.io
git clone https://github.com/commanderHR1/APCS
git clone https://github.com/commanderHR1/java-battleship

#Finalizes
echo "All done! Make sure to check .rc files and conky for proper config!"
echo "Also configure fonts, theme, and file explorer if you wish."
