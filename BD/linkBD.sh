#!/usr/bin/sh 
# links all BD files

linkBD(){
  rm -r /home/$USER/.var/app/com.discordapp.Discord/config/BetterDiscord/themes /home/$USER/.var/app/com.discordapp.Discord/config/BetterDiscord/plugins


  ln -s /home/$USER/.dotfiles/BD/themes /home/$USER/.var/app/com.discordapp.Discord/config/BetterDiscord/
  ln -s /home/$USER/.dotfiles/BD/plugins /home/$USER/.var/app/com.discordapp.Discord/config/BetterDiscord/
}
