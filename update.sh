# git pull 
# update discord plugins/themes
# updates links
#   seperate script for that
# updates crontab?

source BD/plugins/install_plugins.sh
source BD/themes/install_themes.sh 
source BD/linkBD.sh 

git pull

# installs BD themes/plugins and links them
# this depends on flatpak having the perms to access the host fs. todo
# also need to start discord after installing BD before linking
install_themes;
install_plugins
linkBD;

# updates links to all scripts and files

# cron?

