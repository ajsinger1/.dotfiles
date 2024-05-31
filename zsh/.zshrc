export PATH="/usr/local/sbin:$PATH"
export EDITOR=nvim

# uncomment to run zprof
# zmodload zsh/prof

# history
HISTSIZE=50000
SAVEHIST=10000

source ~/antigen.zsh

antigen bundles <<EOBUNDLES
    command-not-found
    colored-man-pages

    zsh-users/zsh-autosuggestions
    zsh-users/zsh-completions
    djui/alias-tips
    zsh-users/zsh-syntax-highlighting
    mfaerevaag/wd
EOBUNDLES
antigen apply

# set starship prompt
source <(/opt/homebrew/bin/starship init zsh --print-full-init)

# load the rest of the configs
source $HOME/.dotfiles/zsh/.exports
source $HOME/.dotfiles/zsh/.aliases

# Google cloud sdk
source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"


source $HOME/.dotfiles/zsh/.postrc
