apt-add-repository ppa:fish-shell/release-2
apt-get update
apt-get instal build-essential \
	tmux \
	vim \
	zsh \
	fish \
	git \
	apt-transport-https \
	ca-certificates \
	x11-xserver-utils \
	nload \
	iftop \
	ruby \
	ruby-dev \
	neofetch \

# init docker
wget -qO- https://get.docker.com/ | sh
usermod -aG docker ubuntu

git clone https://github.com/hei-threebody/Object-detection.git
echo "You can go into Object-dection and do docker build"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/hei-threebody/dotfiles.git

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/skylerlee/zeta-zsh-theme.git
mv zeta-zsh-theme/zeta.zsh-theme ~/.oh-my-zsh/themes

curl -L https://get.oh-my.fish | fish

gem install colorls \
	lolcat

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

cp dotfiles/server/.zshrc ~/.zshrc
cp dotfiles/server/.tmux.conf ~/.tmux.conf
cp dotfiles/server/.vimrc ~/.vimrc
cp dotfiles/server/.vimrc.plugin ~/.vimrc.plugin
cp dotfiles/server/.vimrc.pluginrc ~/.vimrc.pluginrc
cp dotfiles/server/.vimrc.maprc ~/.vimrc.maprc
cp dotfiles/server/.vimrc.local.file ~/.vimrc.local.file

wget https://github.com/jingweno/ccat/releases/download/v1.1.0/linux-386-1.1.0.tar.gz
tar -xvzf linux-386-1.1.0.tar.gz
mv linux-386.1.1.0/ccat /usr/local/bin
