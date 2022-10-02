#!/bin/bash

install_plugins() {
  declare -a plugins=("https://raw.githubusercontent.com/mwittrien/BetterDiscordAddons/master/Plugins/ImageUtilities/ImageUtilities.plugin.js" 
  "https://raw.githubusercontent.com/mwittrien/BetterDiscordAddons/master/Plugins/GameActivityToggle/GameActivityToggle.plugin.js" 
  "https://raw.githubusercontent.com/mwittrien/BetterDiscordAddons/master/Plugins/SplitLargeMessages/SplitLargeMessages.plugin.js"
  "https://raw.githubusercontent.com/QWERTxD/BetterDiscordPlugins/main/UserVolumeBooster/UserVolumeBooster.plugin.js"
  "https://raw.githubusercontent.com/Strencher/BetterDiscordStuff/master/InvisibleTyping/InvisibleTyping.plugin.js"
  "https://raw.githubusercontent.com/Strencher/BetterDiscordStuff/master/PlatformIndicators/APlatformIndicators.plugin.js"
  "https://raw.githubusercontent.com/l0c4lh057/BetterDiscordStuff/master/Plugins/TypingIndicator/TypingIndicator.plugin.js"
  "https://raw.githubusercontent.com/rauenzi/BetterDiscordAddons/master/Plugins/DoNotTrack/DoNotTrack.plugin.js"
  "https://raw.githubusercontent.com/QWERTxD/BetterDiscordPlugins/main/CallTimeCounter/CallTimeCounter.plugin.js"
  "https://raw.githubusercontent.com/vizality-community/better-code-blocks/main/index.js"
  "https://raw.githubusercontent.com/mwittrien/BetterDiscordAddons/0703c5ecc96845fa0dda8e1ba6f954232afe3300/Plugins/ReadAllNotificationsButton/ReadAllNotificationsButton.plugin.js"
  "https://raw.githubusercontent.com/Farcrada/DiscordPlugins/115347128b0afe982d415603c81cac574fbd6ef1/Double-click-to-edit/DoubleClickToEdit.plugin.js"
  "https://raw.githubusercontent.com/rauenzi/BDPluginLibrary/f05c66e9e41ec2eb4682dacec42d45b1bdf37086/release/0PluginLibrary.plugin.js"
  "https://raw.githubusercontent.com/mwittrien/BetterDiscordAddons/befcceb5a940432c095fcc473f7ea35d00e12a49/Library/0BDFDB.plugin.js"
  "https://raw.githubusercontent.com/Mopsgamer/BetterDiscord-codes/f80759dc559f184f5f02f02f2b9912d5e035fde5/Animations.plugin.js"
)

  cd /home/$user/.dotfiles/BD/plugins/

  # removes all existing plugins
  rm *.js* *.*css*

for plugin in "${plugins[@]}"
do
  wget --content-disposition --trust-server-names $plugin
done
mv index.js better-code-blocks.js # need to fix this somehow. discord does not pickup the code blocks plugin


}

#install_plugins;
