#/bin/bash
apt update
apt install zsh mc fzf bat bash-completion 
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc

# Vim plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Vim colors
git clone https://github.com/joshdick/onedark.vim.git ~/onedark
cd ~/onedark
mkdir ~/.vim/colors
cp colors/onedark.vim ~/.vim/colors/
cp autoload/onedark.vim ~/.vim/autoload/