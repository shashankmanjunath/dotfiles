#!/bin/bash


zsh_install() {
    sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
    rm -rf ~/.zshrc
    ln -s $(realpath .zshrc) ~/.zshrc
}

fzf_install() {
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
}

vim_setup() {
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    ln -s $(realpath .vimrc) ~/.vimrc
    vim +PluginInstall +qall
    cd ~/.vim/bundle/YouCompleteMe
    python3 install.py --all
    cd ~/
}


conda_install() {
    wget https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh
    bash Anaconda3-2020.07-Linux-x86_64.sh
}

# Getting OS Version
if [ -f /etc/os-release ]; then
    # freedesktop.org and systemd
    . /etc/os-release
    OS=$NAME
    VER=$VERSION_ID
elif type lsb_release >/dev/null 2>&1; then
    # linuxbase.org
    OS=$(lsb_release -si)
    VER=$(lsb_release -sr)
elif [ -f /etc/lsb-release ]; then
    # For some versions of Debian/Ubuntu without lsb_release command
    . /etc/lsb-release
    OS=$DISTRIB_ID
    VER=$DISTRIB_RELEASE
elif [ -f /etc/debian_version ]; then
    # Older Debian/Ubuntu/etc.
    OS=Debian
    VER=$(cat /etc/debian_version)
elif [ -f /etc/SuSe-release ]; then
    # Older SuSE/etc.
    ...
elif [ -f /etc/redhat-release ]; then
    # Older Red Hat, CentOS, etc.
    ...
else
    # Fall back to uname, e.g. "Linux <version>", also works for BSD, etc.
    OS=$(uname -s)
    VER=$(uname -r)
fi

if [[ "$OS" == "Ubuntu" ]]; then
    sudo apt-get install zsh wget tmux build-essential cmake vim python3-dev golang
fi

fzf_install
zsh_install
vim_setup
# conda_install

