git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# echo "alias ll='ls -lGaf'" >> ~/.bash_profile
# source ~/.bash_profile
# alias ls='ls $LS_OPTIONS'

gem install colorls
cp ~/dotfiles-public/.zshrc ~/