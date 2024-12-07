#!/bin/bash
clear

# Installation du sudo 
pacman -S sudo --noconfirm 

# Installation MàJ
sudo pacman -Syu --noconfirm 

# Installation vim, curl et tmux
sudo pacman -S vim curl tmux --noconfirm 

# Installation du package Network
sudo pacman -S networkmanager --noconfirm

# Configuration vimrc
echo 'set nocompatible' >> /etc/vimrc
echo 'set number' >> /etc/vimrc

# Configuration vimrc indentation
echo 'set autoindent' >> /etc/vimrc
echo 'set smartindent' >> /etc/vimrc
echo 'set tabstop=4' >> /etc/vimrc
echo 'set shiftwidth=4' >> /etc/vimrc
echo 'set expandtab' >> /etc/vimrc

echo 'inoremap { {}<Left>' >> /etc/vimrc
echo 'inoremap ( ()<Left>' >> /etc/vimrc
echo 'inoremap " ""<Left>' >> /etc/vimrc
echo 'inoremap [ []<Left>' >> /etc/vimrc


# Save file configuration 
mkdir ~/SaveConfig
cp -v /etc/bash.bashrc ~/SaveConfig


#Personnalisation du Terminal avec Starship 
curl -sS https://starship.rs/install.sh | sh



# Configuration bash.bashrc  
echo '  ' >> /etc/bash.bashrc 
echo '# My alias ' >> /etc/bash.bashrc
echo 'alias c="clear"' >> /etc/bash.bashrc
echo 'alias u="sudo pacman -Syu --noconfirm"' >> /etc/bash.bashrc
echo 'alias i="sudo pacman -S --noconfirm"' >> /etc/bash.bashrc
echo 'alias s="sudo pacman -Ss"' >> /etc/bash.bashrc
echo 'alias vi="vim"' >> /etc/bash.bashrc
echo 'eval "$(starship init bash)"' >> /etc/bash.bashrc


# Application des alias sur l'utilisateur en cours 
source /etc/bash.bashrc >> /dev/null 

# Supprimer le script à la fin de l'installation 
# rm scpt

source /etc/bash.bashrc 

echo ' ===================================== '
echo '          Operation terminée           '
echo ' ===================================== '
