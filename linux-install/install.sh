#!/bin/bash

#determines your graphics driver. 
nvidia="nouveau"
amd="amdgpu"
intel="intel"
gpu_driver="xf86-video-$intel" #depends based on your graphics

#gets a few needed things out of the way including ntp and updates
timedatectl set-ntp true
pacman -Sy
#(echo ; echo y; echo y) | pacman -S git

# PARTITIONING

echo "\n\n\nFORMATTING THE DRIVE\n\n\n"
gdisk /dev/sda #wipes the drive
echo "\n\n\nCREATING THE PARTITIONS\n\n\n"
fdisk /dev/sda #installs all the partitions. a 1gb boot(sda1), 35gb root(sda2), 4gb swap(sda3) and the rest to home(sda4). then writes it.

# configures the file system. test
mkfs.fat -F32 /dev/sda1 
mkswap /dev/sda3
swapon /dev/sda3
mkfs.ext4 /dev/sda2
mkfs.ext4 /dev/sda4

#mounting
mount /dev/sda2 /mnt
mkdir /mnt/boot
mkdir /mnt/home
mount /dv/sda1 /mnt/boot
mount /dev/sda4 /mnt/home

# BACKUPS

#cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
#(echo ; echo y) | pacman -S pacman-contrib
#rankmirrors -n 6 /etc/pacman.d/mirrorlist.backup > /etc/pacman.d/mirrorlist

# CONFIGURING, NETWORK AND GRUB

pacstrap -i /mnt base base-devel linux linux-firmware #install linux and the basics
genfstab -U -p /mnt >> /mnt/etc/fstab #makes the genfstab based on UUID

cp ./install-p2.sh /mnt
arch-chroot /mnt /install-p2.sh

#reboot
