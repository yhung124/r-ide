set encoding=utf-8
set shell=/bin/bash
set t_Co=256

" toggle auto-indenting for code pastes {{{
set pastetoggle=<F2>
nnoremap <F2> :setlocal paste! paste?<CR>
inoremap <F2> <C-O>:setlocal paste! paste?<CR>
" }}}

" NERDTree
let NERDTreeShowHidden=1
nnoremap <silent><F5> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"For tabs
nnoremap <F6> :tabp<CR>
nnoremap <F7> :tabn<CR>

" Tagbar
nnoremap <F8> :TagbarToggle<CR>
let g:tagbar_sort = 0
let g:tagbar_autofocus = 1

" Jump to the last position when reopening a file
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

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='papercolor'

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1

" Syctastic
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'

colorscheme wombat256mod
set cursorline
hi CursorLine   cterm=NONE ctermbg=black ctermfg=none
" Modify highlight word
hi Search cterm=NONE ctermfg=white ctermbg=blue
let python_highlight_all=1

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

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" All these mappings work only for python code:
" Go to definition
let g:jedi#goto_command = ',d'
" Find ocurrences
let g:jedi#usages_command = ',o'
" Find assignments
let g:jedi#goto_assignments_command = ',a'
" Go to definition in new tab
nmap ,D :tab split<CR>:call jedi#goto()<CR>

" Neocomplete
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Enable omni completion.
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

" Neosnippet Plugin key-mappings. Ctrl + k
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
