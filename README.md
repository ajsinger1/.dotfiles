# dotfiles

Dotfiles for my Macbook Pro 18,1.

![zsh with starship prompt and [eza](https://eza.rocks)](<img width="1083" alt="Screenshot 2023-12-21 at 4 57 21 AM" src="https://github.com/ajsinger1/dotfiles-new/assets/26032169/15e09ec7-b78d-4bf6-853d-f5954c8768bd">)

-   Terminal: [Alacritty](https://github.com/jwilm/alacritty) using zsh w/ [starship prompt](https://starship.rs/)
-   Window management/movement: [rectangle](https://rectangleapp.com), [alttab](https://alt-tab-macos.netlify.app)
-   Vim: [neovim](https://neovim.io/) with [vim-plug](https://github.com/junegunn/vim-plug) to manage plugins
-   Tools: [eza](https://eza.rocks), [bat](https://github.com/sharkdp/bat), [fzf](https://github.com/junegunn/fzf), [wd](https://github.com/mfaerevaag/wd)
-   Many more cool apps (see Brewfile)

## Installation

**Before you get started** make sure you give full disk access permission to your terminal (for writing macos defaults). `System Preferences -> Privacy -> Full Disk Access`.

To install:

- clone this repo
- run `install.sh`
    - this install script will create some directories, download lots of software (via brew), set custom mac preferences, and symlink all dotfiles (via stow). Please refer to source code to see exactly what it does.

## File overview

-   Configs for the following tools:
    -   git
    -   [Alacritty](./alacritty)
    -   [colorls](./colorls)
    -   [fzf](./fzf)
    -   [neovim](./nvim)
    -   [starship](./starship)
    -   [VSCode](./vscode)
-   Shell environment configs:
    -   [Antigen](https://github.com/zsh-users/antigen) for zsh plugin management
    -   [`.zshrc`](./zsh/.zshrc)
    -   [`.zlogin.sh`](./zsh/.zlogin.sh)
    -   [`.zshenv.sh`](./zsh/.zshenv.sh)
    -   [`.aliases`](./zsh/.aliases)
    -   [`.exports`](./zsh/.exports)
-   [`Brewfile`](./Brewfile) - contains all homebrew packages, casks, and mac appstore apps
-   [VSCode settings](./vscode/settings.json)

The install script will also setup Python and Node versions/environments:

-   [pyenv](https://github.com/pyenv/pyenv) sets the global Python version to 3.10
-   [nvm](https://github.com/tj/n) sets the global Node version to LTS

### Customization

####  Git
- Be sure to update the user name/email values in the global [gitconfig](./git/.gitconfig)
#### Color Schemes

- Alacritty color scheme is [Snazzy](https://github.com/sindresorhus/terminal-snazzy)
- VSCode/Vim color scheme is [Ayu](https://github.com/dempfi/ayu)
-   The macOS ['highlight color'](https://github.com/gretzky/dotfiles/blob/main/macos/.macos#L22-L23) (accent color for mac, typically blue) is set to pink. To set it to a different color:
    -   Pick your desired color and get its RGB value (ex. pink is `255,105,180`)
    -   Take each value and divide it by 255 (ex. pink is now `1, 0.41176470588, 0.70588235294`)
    -   Put them into RGB order (ex. pink is `"1 0.41176470588 0.70588235294"`)
## Acknowledgements

-   [huyvohcmc/dotfiles](https://github.com/huyvohcmc/dotfiles)
-   [alrra/dotfiles](https://github.com/alrra/dotfiles)
-   [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
