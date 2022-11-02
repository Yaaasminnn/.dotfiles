#!/bin/bash


install_themes() {
  declare -a themes=("https://raw.githubusercontent.com/DiscordStyles/DarkMatter/main/DarkMatter.theme.css" "https://raw.githubusercontent.com/mr-miner1/Better-Badges/main/theme.scss")
  
  cd /home/$USER/.dotfiles/BD/themes/

  # removes all existing theme files
  rm *.css* *.scss*

for theme in "${themes[@]}"
do
  wget --content-disposition --trust-server-names $theme
done


}



#install_themes;
