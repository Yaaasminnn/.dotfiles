# .dotfiles
Various config, .*rc, scripts and lists of packages in my current setup.


## setup
neofetch:
![neofetch](gallery/neofetch.png)

demo:
![demo](gallery/demo.gif)


## included files/folders:
- .bashrc
- .pythonrc
- .repl.js (node.js rc)
- .vimrc
- .vim/
- pacman_packages
- snap_packages
- flatpak_packages
- .themes/
- .fonts/
- .icons/
- wallpaper
- auto start scripts
- calculators
- crontab scripts
- macros
- other helpful scripts

## todo:
- add icons/fonts etc
  - some wget script so the repo dosent just steal other ppls work
- figure out flatseal
  - so discord can access BD stuff. currently using the GUI app, need cli
- make BD directory before install
  - otherwise we have to manually open discord to create the BD files.
- automate flatpak packages installation




## Macros
- uses Autokey

## scripts
contains a number of scripts i occasionally/often use.
In my current setup, i have set this directory to be part of my $PATH

## autostart
Scripts run on startup.
I use KDE's autostart to run these.


## packages
All packages are listed in text files
### Install
cd into the packages directory first.
atm, flatpak packages cannot be automated. snaps, pacman and apt can be tho 
```sh
cd packages
```

```sh
 for x in $(cat pacman.txt); do pacman -S $x; done
 for y in $(cat apt.txt); do apt install $y; done
 for z in $(cat snap.txt); do snap install $z; done
```

## installing for yourself
I will need to rework the arch install script. for now though, there is some code, although out of date.
