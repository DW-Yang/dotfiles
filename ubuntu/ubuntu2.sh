#!/bin/bash
#powerline 폰트 설치
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh



#powerlevel9k 설치
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

#zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#spacevim
sudo apt-get install curl
curl -sLf https://spacevim.org/install.sh | bash

[ ! -f $HOME/.mackup.cfg ] && ln -nfs $HOME/dotfiles/.mackup.cfg $HOME/.mackup.cfg

source $HOME/.zshrc

#/usr/local/bin/composer global require laravel/installer laravel/envoy laravel/valet tightenco/jigsaw
#$HOME/.composer/vendor/bin/valet install
#git clone git@github.com:laravel/homestead.git $HOME/Homestead
#[ $(basename $(pwd)) == "Homestead" ] && cd $HOME/Homestead
#vagrant box add laravel/homestead
