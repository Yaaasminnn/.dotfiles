#!/bin/bash

read -p "whats your password?: " password #the password you wanna use
read -p "whats yur username?: " username #your username/account

#determines your graphics driver. 
nvidia="nouveau"
amd="amdgpu"
intel="intel"
gpu_driver="xf86-video-$nvidia" #depends based on your graphics

pacman -S networkmanager grub
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
systemctl enable NetworkManager #its nice to have internet


# LANGUAGE
echo en_CA.UTF-8 UTF-8 >> /etc/locale.gen 
echo LANG=en_CA.UTF-8 >> /etc/locale.conf
export LANG=en_CA.UTF-8



# USERS AND PASSWORDS
echo laptop >> /etc/hostname
(echo $password; echo $password) | passwd 
useradd -mg users -G wheel,storage,power -s /bin/bash $username
(echo $password; echo $password) | passwd $username
echo $username "ALL=(ALL) ALL" >> /etc/sudoers 
#echo Defaults !tty_tickets >> /etc/sudoers
echo Defaults rootpw >> /etc/sudoers


# INSTALLING DESKTOP ENVIRONMENT

pacman -S xorg-server xorg-apps xorg-xinit xorg-xclock $gpu_driver plasma bash-completion vim discord firefox gedit neofetch konsole git chromium vscode dolphin obs-studio
git clone clone https://aur.archlinux.org/yay-git.git
yay -Syu ferdi gparted lightdm lightdm-webkit2-greeter lightdm-webkit-theme-aether




#startx


# INSTALLING SOFTWARE

#pacman -S bash-completion vim discord firefox gedit neofetch

# REBOOT
echo "You may now do whatever. preferably configure lightdm to boot plasma"
vim /etc/lightdm/lightdm.conf
#systemctl enable lightdm
#exit 
#reboot

