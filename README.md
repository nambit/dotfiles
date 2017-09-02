## Setting up i3
* Install i3 `sudo apt-get install i3`
* Install i3blocks `sudo apt-get install i3blocks`
* Install lxappearance `sudo apt-get install lxappearance`
* Install compton `sudo apt-get install compton`
* Install feh `sudo apt-get install feh`
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

## Setting up VIM
* VIM uses vundle so install that first 
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
* Copy the vimrc `scp vimrc/.vimrc ~/.vimrc`
* Start up VIM and run `:PluginInstall`


