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

colorscheme slate
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
