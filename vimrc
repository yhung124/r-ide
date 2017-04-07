" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'Townk/vim-autoclose'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'flazz/vim-colorschemes'
Plugin 'ervandew/supertab'

" Snipmate
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set shell=/bin/bash
set t_Co=256

" toggle auto-indenting for code pastes {{{
set pastetoggle=<F2>
nnoremap <F2> :setlocal paste! paste?<CR>
inoremap <F2> <C-O>:setlocal paste! paste?<CR>
" }}}

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  endif

" turn off highlight search automatically by "enter"
nnoremap <silent> <CR> :nohl<CR><CR>"

" For bash files
autocmd Filetype sh setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
"For yaml files
autocmd Filetype yaml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

syntax on
set hlsearch
set nocompatible

set nu
set so=7
set tabstop=4
set shiftwidth=4
set softtabstop=4
set ignorecase
set autoindent
set incsearch
set updatetime=250
set expandtab
set scrolloff=7
set cmdheight=1
set cindent
set wildmenu
set showmode
set laststatus=2
set statusline=[%F]\ %m%<%r%h%w\ [%{&fileencoding},%Y]%=
set statusline+=[%v,%p%%]\ [Total\ line=%L]

colorscheme wombat256mod
set cursorline
hi CursorLine   cterm=NONE ctermbg=darkgrey ctermfg=none
" Modify highlight word
hi Search cterm=NONE ctermfg=white ctermbg=blue
" Modify background of current line
"hi CursorLine cterm=NONE ctermfg=NONE ctermbg=15

"For quit
nnoremap qa :q!<CR>
nnoremap qqa :qa!<CR>

"To have the numeric keypad working with putty / vim
:imap <Esc>Oq 1
:imap <Esc>Or 2
:imap <Esc>Os 3
:imap <Esc>Ot 4
:imap <Esc>Ou 5
:imap <Esc>Ov 6
:imap <Esc>Ow 7
:imap <Esc>Ox 8
:imap <Esc>Oy 9
:imap <Esc>Op 0
:imap <Esc>On .
:imap <Esc>OQ /
:imap <Esc>OR *
:imap <Esc>Ol +
:imap <Esc>OS -

" Show space as .
:set list
:set listchars=tab:>-,trail:.,extends:>,precedes:<
