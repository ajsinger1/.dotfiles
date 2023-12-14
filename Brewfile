#############################################################
# ~/.Brewfile - Software Installs for MacOS                 #
#                                                           #
# List of packages to be installed / updated via Homebrew   #
# Apps are sorted by category, and arranged alphabetically  #
# Be sure to delete / comment out anything you do not need  #
# Usage, run: $ brew bundle --global --file $HOME/.Brewfile #
# Source GH repository: https://github.com/lissy93/Brewfile #
# See brew docs for more info: https://docs.brew.sh/Manpage #
#                                                           #
# License: MIT © Alicia Sykes 2022 <https://aliciasykes.com>#
#############################################################

# Options
cask_args appdir: '~/Applications', require_sha: true

# Taps
tap 'homebrew/bundle'
tap 'homebrew/core'
tap 'homebrew/services'
tap 'blacktop/tap'
tap 'browsh-org/homebrew-browsh'
tap 'espanso/espanso'
tap 'jesseduffield/lazygit'
tap 'koekeishiya/formulae'
tap 'kdash-rs/kdash'

brew 'mas'          # Install App Store apps via brew

#############################################################
# Command Line                                              #
#############################################################

# GNU Tooling
brew 'coreutils'    # GNU Core Utilities
brew 'diffutils'    # GNU Diff Utilities
brew 'findutils'    # GNU Find Utilities
brew 'gawk'         # GNU awk
brew 'gnu-sed'      # GNU sed
brew 'gnu-tar'      # GNU tar
brew 'gnu-time'     # GNU time
brew 'gnu-which'    # GNU which
brew 'gnupg'        # GNU PGP
brew 'grep'         # GNU grep
brew 'gzip'         # GNU gzip
brew 'stow'         # GNU stow

# CLI Essentials
brew 'git'          # Version controll
brew 'neovim'       # Hyperextensible Vim-based text editor
brew 'vim'          # Vim - the ubiquitous text editor

# CLI Basics
brew 'bat'          # Output highlighting (better cat)
brew 'diff-so-fancy'# Readable file compares (better diff)
brew 'fzf'          # Fuzzy file finder and filtering
brew 'procs'        # Advanced process viewer (better ps)
brew 'rename'       # Rename files and directories
brew 'rsync'        # Fast incremental file transfer
brew 'starship'     # Minimal, blazing-fast, and infinitely customizable prompt
brew 'tldr'         # Community-maintained docs (better man)
brew 'tree'         # Directory listings as tree structure
brew 'wget'         # GNU wget
brew 'zsh'          # UNIX shell

# CLI Fun
brew 'cowsay'       # Have an ASCII cow say your message
brew 'figlet'       # Output text as big ASCII art text
brew 'neofetch'     # Show system data and ditstro info

#############################################################
# Software Development                                      #
#############################################################

# Development Apps
cask 'alacritty'      # Better terminal emulator
cask 'boop'           # Text transformation tool
cask 'drawio'         # Diagram editor
cask 'iterm2'         # Better terminal emulator
cask 'kicad'          # PCB design app
cask 'postman'        # HTTP API testing app
cask 'visual-studio-code' # Code editor

# Development Langs, Compilers, Package Managers and SDKs
brew 'gcc'            # GNU C++ compilers
brew 'go'             # Compiler for Go Lang
brew 'lua'            # Lua interpreter
brew 'luarocks'       # Package manager for Lua
brew 'node'           # Node.js
brew 'nvm'            # Switching node versions
brew 'python'         # Python interpreter
brew 'pyenv'
brew 'rust'           # Rust language
brew 'rbenv'
brew 'ruby-build'
brew 'cocoapods'
brew 'yarn'           # JS Package manager


# DevOps
cask 'docker'         # Containers

# Development Utils
brew 'git-extras'     # Extra git commands for common tasks

# Network and Security Testing
cask 'wireshark'      # Network analyzer + packet capture

# Security Utilities and Data Encryption
brew 'bcrypt'         # Encryption utility, using blowfish
brew 'clamav'         # Open source virus scanning suite
brew 'lynis'          # Scan system for common security issues
brew 'openssl'        # Cryptography and SSL/TLS Toolkit

#############################################################
# Desktop Applications                                      #
#############################################################

# Creativity
cask 'gimp'         # Photo editor
cask 'inkscape'     # Vector editor
cask 'obs'          # Screencasting / recording
cask 'figma'          # Web design

# Media
cask 'spotify', args: { require_sha: false } # Propietary music streaming
cask 'transmission' # Torrent client
cask 'vlc'          # Media player
cask 'handbrake'    # Video transcoder
brew 'pandoc'       # Universal file converter
cask 'the-unarchiver'   # RAR opener

# Personal Applications
# cask '1password'      # Password manager (proprietary)

# Browsers
cask 'firefox'
cask 'google-chrome', args: { require_sha: false }
cask 'brave-browser'

# Productivity
cask 'alfred'       # The best thing ever
cask 'fantastical'  # Calendar client
cask 'readdle-spark' # Email client
cask 'rectangle'    # Window tile manager
cask 'dropzone'     # Drag and drop manager

# Communication
cask 'discord'
cask 'zoom'

# Misc
cask 'appcleaner'   # App uninstaller
cask 'teamviewer'   # Remote access and connectivity
cask 'tempbox'      # Disposable email client

#############################################################
# MacOS-Specific Stuff                                      #
#############################################################

# Fonts
tap 'homebrew/cask-fonts'
cask 'font-fira-code'
cask 'font-fira-mono-nerd-font'
cask 'font-hack'
cask 'font-inconsolata', args: { require_sha: false }
cask 'font-meslo-lg-nerd-font'
cask 'font-hack-nerd-font'

# Mac OS Mods and Imrovments
cask 'alt-tab'        # Much better alt-tab window switcher
cask 'openinterminal' # Finder button, opens directory in terminal
cask 'stats'          # System resource usage in menubar

# Mac App Store
mas 'xcode', id: 497799835
