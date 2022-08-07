# Setup file
# moves all the files in the repo and setup the config.
#
# Basically just makes all the appropriate directories, 
# moves all the files and sets the perms,
# and git clones or curl/wget's any remote files.
#
# does not download packages except for the ones needed to perform this script
#
# also sets all links
#   to dotfiles
#
# todo:
#   .*rc files
#   .config
#   autostart
#   calculators -> ~/programming/scripts/calculators
#   crontab
#   kwin rules?
#   autokey macros
#   scripts -> ~/programming/scripts/
#   vim plugins install? need fonts
#

# gets the username
user=$(whoami)



# makes directories
mkdir -p ~/programming/Work ~/programming/learning ~/programming/archives   # programming
mkdir /home/$user/GIMP /home/$user/School # ~ 

# moves wallpapers to the wallpapers location
cp -r /home/$user/.dotfiles/gallery/wallpapers /home/$user/Pictures/



# Links

# removes existing copies of files so we can create links there
rm /home/$user/.bashrc
rm /home/$user/.gitconfig
rm /home/$user/.git-prompt.sh
rm /home/$user/.pythonrc
rm /home/$user/.replrc
rm /home/$user/.vimrc

# sets up ~/.vim/
rm -rf /home/$user/.vim/
mkdir -p /home/$user/.vim/plugged
# gets plug.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# makes links in ~
ln -s /home/$user/.dotfiles/.\*rc/.bashrc /home/$user/.bashrc
ln -s /home/$user/.dotfiles/.\*rc/.gitconfig /home/$user/.gitconfig
ln -s /home/$user/.dotfiles/.\*rc/.git-prompt.sh /home/$user/.git-prompt.sh
ln -s /home/$user/.dotfiles/.\*rc/.pythonrc  /home/$user/.pythonrc
ln -s /home/$user/.dotfiles/.\*rc/.replrc /home/$user/.replrc
ln -s /home/$user/.dotfiles/vim/.vimrc /home/$user/.vimrc
ln -s /home/$user/.dotfiles/vim/plugins.vim /home/$user/.vim/plugins.vim

# makes links to ~/programming
ln -s /home/$user/.dotfiles/scripts/ /home/$user/programming




# clones https://github.com/qw3rtman/git-fire


# installs packages


# sets crontab stuff
