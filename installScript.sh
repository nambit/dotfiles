#!/bin/bash
cd /tmp

git clone https://github.com/nambitable/dotfiles.git

GET="sudo apt-get install"

# Install zsh
echo "Installing zsh..."
eval $GET zsh
chsh -s /usr/bin/zsh

zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

scp dotfiles/zsh/.zshrc ~/
scp dotfiles/zsh/.zpreztorc ~/

# Install other dependencies
echo "Installing other dependencies..."
eval $GET lxappearance compton feh rofi thunar termite

# Install i3-gaps
echo "Installing i3-gaps..."
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
cd ..

# Install i3pystatus
pip3 install git+https://github.com/enkore/i3pystatus.git

# Configure i3
echo "Configuring i3..."
mkdir -p ~/.config/i3
scp dotfiles/i3/* ~/.config/i3
mkdir -p ~/.config/rofi 
scp dotfiles/rofi/config ~/.config/rofi
mkdir -p ~/.config/termite 
scp dotfiles/termite/config ~/.config/termite

# Install fonts
echo "Installing fonts..."
eval $GET fonts-powerline
mkdir ~/.fonts
cp -R dotfiles/i3/fonts ~/.fonts

# Install/configure VIM
echo "Configuring vim..."
eval $GET install vim
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone -b extra-syntaxes https://github.com/DancingQuanta/taskwiki.git ~/.vim/bundle
scp dotfiles/vim/.vimrc ~/.vimrc
vim +PluginInstall +qall

