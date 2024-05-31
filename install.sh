#!/bin/zsh

install_brew() {
    if ! command -v "brew" &> /dev/null; then
        printf "Homebrew not found, installing."
        # install homebrew
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        # set path
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi

    sudo softwareupdate --install-rosetta

    printf "Installing homebrew packages..."
    brew bundle
}

create_dirs() {
    declare -a dirs=(
        "$HOME/Desktop/screenshots"
        "$HOME/dev"
        "$HOME/.nvm"
    )

    for i in "${dirs[@]}"; do
        mkdir "$i"
    done
}

printf "🗄  Creating directories\n"
create_dirs

printf "🍺  Installing Homebrew packages\n"
install_brew

printf "💻  Set macOS preferences\n"
./macos/.macos

printf "Configuring Ruby...\n"
# setup rbenv / global ruby to 3.2.2
rbenv install 3.2.2
rbenv global 3.2.2

printf "Configuring Python...\n"
# setup pyenv / global python to 3.10.x
pyenv install 3.10
pyenv global 3.10
pip install gitz

printf "Configuring Node...\n"
# setup nvm to latest LTS version
nvm install node --lts



printf "👽  Installing vim-plug (remember to run :PlugInstall in vim! https://github.com/junegunn/vim-plug#commands)\n"
# ** NOTE, VIM PLUGINS WILL NEED TO BE INSTALLED VIA PlugInstall WHEN OPENED FOR FIRST TIME (https://github.com/junegunn/vim-plug#commands)
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

printf "🐗  Symlinking dotfiles using stow\n"
stow alacritty fzf git nvim starship vim zsh warp iterm

printf "✨  Done!\n"
