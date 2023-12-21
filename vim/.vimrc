" use vim not vi
set nocompatible
filetype off

" init vim-plug
call plug#begin('~/.vim/plugged')

" plugins
Plug 'junegunn/fzf', { 'do': 'yes n \| ./install' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-emoji'
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'junegunn/limelight.vim', { 'on': 'Goyo' }
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-signify'
Plug 'dense-analysis/ale'
Plug 'rstacruz/vim-closer'
Plug 'Yggdroot/indentLine'
Plug 'voldikss/vim-floaterm'
Plug 'leafgarland/typescript-vim'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
" finish plugins
call plug#end()

" general settings
filetype plugin indent on
set autoindent
set backspace=indent,eol,start
set clipboard^=unnamed
set completeopt=noinsert,menuone,noselect
set copyindent
set cursorline
set encoding=utf-8 nobomb
set expandtab shiftwidth=2 softtabstop=-1
set hidden
set history=1000
set incsearch hlsearch ignorecase smartcase
set lazyredraw
set linebreak
set list listchars=tab:.\ ,trail:.
set matchpairs+=<:>
set nobackup
set noswapfile
set nu
set rnu
set scrolloff=5
set shortmess+=cW
set showmatch
set splitright
set tags=./tags;,tags
set ttimeoutlen=0
set undofile
set undodir=~/.vim/undo
set visualbell
set wildignore+=tags,*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem,*.pyc,*.swp,*~,*/.DS_Store
set wildmode=longest:full,list,full

if !exists("g:syntax_on")
  syntax enable
endif

set t_Co=256
syntax on

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

colorscheme onedark

hi Normal guibg=NONE ctermbg=NONE

" lightline
let g:lightline = {
  \ 'colorscheme': 'one',
  \ }

" IndentLine {{
let g:indentLine_char = '|'
let g:indentLine_first_char = '|'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
" }}

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" NERD Tree {{
" Show hidden files/directories
let g:NERDTreeShowHidden = 1
" Remove bookmarks and help text from NERDTree
let g:NERDTreeMinimalUI = 1
" Hide the Nerdtree status line to avoid clutter
" let g:NERDTreeStatusline = ''
" Hide certain files and directories from NERDTree
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]']
" Mappings
nnoremap <leader>n :NERDTreeToggle<cr>
" map <C-n> :NERDTreeToggle<CR>
" nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
" }}

" map nerdtree
map <C-a> :NERDTreeToggle<CR>

" ale
let b:ale_fixers = {'javascript': ['prettier', 'eslint'] }
