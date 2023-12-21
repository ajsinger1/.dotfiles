# .dotfiles

Dotfiles for my Macbook Pro.

<img width="912" alt="Screenshot 2023-12-21 at 7 00 41 AM" src="https://github.com/ajsinger1/.dotfiles/assets/26032169/5e2e429f-505d-49ac-a593-2e9d7526a83a">

-   Terminal: [Alacritty](https://github.com/jwilm/alacritty) using zsh w/ [Starship prompt](https://starship.rs/)
    - prompt git key: '!' (modified), '+' (staged), '?' (untracked)
-   Window management/movement: [Rectangle](https://rectangleapp.com), [AltTab](https://alt-tab-macos.netlify.app)
-   App launcher: [Alfred](https://www.alfredapp.com)
-   Vim: [neovim](https://neovim.io/) with [vim-plug](https://github.com/junegunn/vim-plug) to manage plugins
-   CLI Tools: [eza](https://eza.rocks), [bat](https://github.com/sharkdp/bat), [fzf](https://github.com/junegunn/fzf), [wd](https://github.com/mfaerevaag/wd)
-   Many more cool apps (see Brewfile)

## Installation

**Before you get started** make sure you give full disk access permission to your terminal (for writing macos defaults). `System Preferences -> Privacy -> Full Disk Access`.

To install:

- clone this repo
- run `install.sh`
    - this install script will create some directories, download lots of software (via brew), set custom mac preferences, setup python, node, and ruby environment managers, and symlink all dotfiles (via stow). Please refer to source code to see exactly what it does. This script is not well tuned at the moment and I'm probably not going to fix it until I need to set up another laptop, you may need to run it multiple times for things to first get installed and properly loaded into the shell before.

## File overview

-   Configs for the following tools:
    -   git
    -   [Alacritty](./alacritty)
    -   [fzf](./fzf)
    -   [neovim](./nvim)
    -   [starship](./starship)
    -   [VSCode](./vscode)
-   Shell environment configs:
    -   [Antigen](https://github.com/zsh-users/antigen) for zsh plugin management
    -   [`.zshrc`](./zsh/.zshrc)
    -   [`.aliases`](./zsh/.aliases)
    -   [`.exports`](./zsh/.exports)
-   [`Brewfile`](./Brewfile) - contains all homebrew packages, casks, and mac appstore apps
-   [VSCode settings](./vscode/settings.json)

The install script will also setup Python and Node versions/environments:

-   [pyenv](https://github.com/pyenv/pyenv) sets the global Python version to 3.10
-   [rbenv](https://github.com/rbenv/rbenv) sets the global Ruby version to 3.2.2
-   [nvm](https://github.com/tj/n) sets the global Node version to LTS

### Customization

####  Git
- Be sure to update the user name/email values in the global [gitconfig](./git/.gitconfig)

## Acknowledgements
-   [gretzky/dotfiles](https://github.com/gretzky/dotfiles)(forked)
-   [huyvohcmc/dotfiles](https://github.com/huyvohcmc/dotfiles)
-   [alrra/dotfiles](https://github.com/alrra/dotfiles)
-   [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)

## Disclaimer
- Nobody is forcing you to use this. Use at your own risk.
