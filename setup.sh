# Setup file
# moves all the files in the repo and setup the config.
#
# Basically just makes all the appropriate directories, 
# moves all the files and sets the perms,
# and git clones or curl/wget's any remote files.
# also sets all links
#
# todo:
#   autostart
#   crontab
#   kwin rules?
#   autokey macros
#   vim plugins install? need fonts
#   install all the packages from the respective package managers

source BD/plugins/install_plugins.sh
source BD/themes/install_themes.sh 

# gets the username
user=$(whoami)

cd ~ # moves to the home directory



# makes directories
mkdir -p ~/programming/Work ~/programming/learning ~/programming/archives   # programming
# programming/learning dirs GO, python, C_CPP etc
mkdir /home/$user/GIMP /home/$user/School # ~ 

# moves wallpapers to the wallpapers location
cp -r /home/$user/.dotfiles/gallery/wallpapers /home/$user/Pictures/



# sets up Vim

sudo apt install curl nodejs vim vim-gtk3

# refreshes ~/.vim/
rm -rf /home/$user/.vim/
mkdir -p /home/$user/.vim/plugged

# gets plug.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim




# Links

# removes existing copies of files so we can create links there
rm /home/$user/.bashrc
rm /home/$user/.gitconfig
rm /home/$user/.git-prompt.sh
rm /home/$user/.pythonrc
rm /home/$user/.replrc
rm /home/$user/.vimrc
rm /home/$USER/.rc.lua

# makes links in ~
ln -s /home/$user/.dotfiles/.\*rc/.bashrc /home/$user/.bashrc
ln -s /home/$user/.dotfiles/.\*rc/.gitconfig /home/$user/.gitconfig
ln -s /home/$user/.dotfiles/.\*rc/.git-prompt.sh /home/$user/.git-prompt.sh
ln -s /home/$user/.dotfiles/.\*rc/.pythonrc  /home/$user/.pythonrc
ln -s /home/$user/.dotfiles/.\*rc/.replrc /home/$user/.replrc
ln -s /home/$USER/.dotfiles/.\*rc/.luarc /home/$USER/.luarc
ln -s /home/$user/.dotfiles/vim/.vimrc /home/$user/.vimrc
ln -s /home/$user/.dotfiles/vim/plugins.vim /home/$user/.vim/plugins.vim

# makes links to ~/programming
ln -s /home/$user/.dotfiles/scripts/ /home/$user/programming



# discord

flatpak install flathub com.discordapp.Discord # the flatpak package always auto-updates. no manual update necessary

# install and setup fuse
sudo modprobe -v fuse
sudo addgroup fuse
sudo adduser $user fuse
sudo apt install libfuse2

#BetterDiscord
wget https://github.com/BetterDiscord/Installer/releases/latest/download/BetterDiscord-Linux.AppImage # installs
sudo mv BetterDiscord-Linux.AppImage /usr/bin/BetterDiscord # moves to the right directory
sudo chown $user:users /usr/bin/BetterDiscord # this could be an error. since the user may not be in users
sudo chmod +x /usr/bin/BetterDiscord

mkdir -p /home/$user/.config/BetterDiscord/ # makes the BetterDiscord directory
mkdir /home/$user/.dotfiles/BD/plugins /home/$user/.dotfiles/BD/themes # creates the plugins and themes directories

# installs all plugins/themes
install_themes;
install_plugins;



# links them 
ln -s /home/$user/.dotfiles/BD/themes /home/$user/.var/app/com.discordapp.Discord/config/BetterDiscord/
ln -s /home/$user/.dotfiles/BD/plugins /home/$user/.var/app/com.discordapp.Discord/config/BetterDiscord/


# ssh
sudo apt install ssh
sudo mkdir .ssh/
ln -s /home/$user/.dotfiles/.\*rc/ssh/config /home/$user/.ssh/
ssh-keygen


# clones https://github.com/qw3rtman/git-fire
git clone https://github.com/qw3rtman/git-fire
sudo mv git-fire/git-fire /usr/bin/git-fire
rm -rf git-fire/



# installs packages



# sets crontab stuff
