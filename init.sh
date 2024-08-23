#!/bin/bash
#Script to set up software
sudo apt -y update && sudo apt upgrade

#Accesories
sudo apt -y install git ark gnome-calculator vim vim-common vim-runtime vim-tiny libreoffice-base-core snapd acl diffutils cpio debianutils nano hardinfo
sudo snap install snap-store

#Electronics
sudo apt -y install arduino fritzing 

#Games
sudo apt -y install 2048-qt 

#Graphics
sudo apt -y install gimp inkscape mesa-utils netpbm scrot qpdfview xscreensaver xscreensaver-data xscreensaver-data-extra xscreensaver-gl xscreensaver-gl-extra xscreensaver-screensaver-bsod

#Internet/Networking
sudo apt -y install net-tools nmap bluedevil putty thunderbird wireshark mutt ftp vsftpd quassel wget curl samba rsync iw netcat mailutils postfix
sudo snap install nutty

#Misc.
sudo apt -y install tmux xclip
sudo apt -y install gparted timeshift htop powerline python-powerline fonts-powerline virtualbox xterm qps git mtools dosfstools cifs-utils mariadb-common
sudo apt -y install adwaita-icon-theme adwaita-icon-theme-full adwaita-qt conky
sudo snap install discord barrier-kvm cheat conda hello rambox

#Programming
sudo apt -y install arduino arduino-core codeblocks cutter ecj clang cmake geany thonny ant apache2 automake c2hs cloc cpp cpp-8 g++ g++-8 gcc gcc-8 golang java-common nodejs python3 python-pip python-numpy ruby perl6 perl php openjdk-17-jdk jupyter-client jupyter-console jupyter-core mysql-common mu-editor
#sudo snap install eclipse intellij-idea-community android-studio  dotnet-sdk kotlin kotlin-native jupyter pycharm-community 

#AV
sudo apt -y install vlc audacity

#Wine
sudo apt -y install wine playonlinux wine64 winetricks
sudo dpkg --add-architecture i386

# Back up local config files if present
if [ -f ~/.profile ]; then
    mv ~/.profile ~/.profile.old
fi
if [ -f ~/.bash_profile ]; then
    mv ~/.bash_profile ~/.bash_profile.old
fi
if [ -f ~/.bashrc ]; then
    mv ~/.bashrc ~/.bashrc.old
fi
if [ -f ~/.vimrc]; then
    mv ~/.vimrc ~/.vimrc.old
fi
if [ -f ~/.tmux.conf]; then
    mv ~/.tmux.conf ~/.tmux.conf.old
fi

#Copies config files to correct areas
echo "Adding config files"
mkdir ~/build
cp .condarc ~
cp .profile ~
cp .bash_profile ~
cp .bashrc ~
cp conky-startup.sh ~

# Set up tmux
echo "Setting up tmux"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp .tmux.conf ~
tmux source-file ~/.tmux.conf

# Set up vim
echo "Getting Vundle for Vim customization" 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~
vim +PluginInstall +qall

#Gets other Github repos
echo "Pulling Github repositories"
mkdir ~/Documents/Github
cd ~/Documents/Github
git clone https://github.com/hransom528/hransom528

#Finalizes
echo "All done! Make sure to check .rc files and conky for proper config!"
echo "Also configure fonts, theme, and file explorer if you wish."
