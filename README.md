# Setup
This started as a place to keep my dotfiles but I keep repeating a lot of configuration setup that now it's expanded to more than just that.

## Setting up i3
* Install i3 `sudo apt-get install i3`
* Install i3blocks `sudo apt-get install i3blocks`
* Install lxappearance `sudo apt-get install lxappearance`
* Install compton `sudo apt-get install compton`
* Install feh `sudo apt-get install feh`
* Install rofi `sudo apt-get install rofi`
### Set up fonts
* Create fonts directory `mkdir ~/.fonts`
* Copy fonts `cp -R i3/fonts ~/.fonts`
* Launch lxappearance and set font to SFNS Display
### Set Arc Theme
* Google arc-theme and install for gtk
* Google arc-theme and install for firefox

### Setup i3
* Copy i3config file. `scp i3/config ~/.config/i3/config`
* Copy i3blocks file. `scp i3/i3blocks.conf ~/.config/i3`
* Set the feh background to an appropriate wallpaper

### Other apps to install
* Thunar for file system
* pavucontrol for audio/output devices
** Note: On the dell xps, in order to reset the sound card, you can do `sudo modprobe snd-soc-rt286`

## Setting up VIM
* VIM uses vundle so install that first 
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
* Copy solarized colors `scp vim/vim-colors-solarized-master/colors/solarized.vim ~/.vim/colors/`
* Copy the vimrc `scp vim/.vimrc ~/.vimrc`
* Start up VIM and run `:PluginInstall`


## Solarized
* Get solarized gnome terminal colors from `https://github.com/Anthony25/gnome-terminal-colors-solarized`
