syntax on

" enable color themes
if !has('gui_running')
    set t_Co=256
endif

" enable true colors support
set termguicolors

" vim colorscheme
colorscheme delek

set keyprotocol=
let &term=&term

" enable mouse support
set mouse=a

" show line number
set number relativenumber

" Indentation using spaces
" tabstop:      width of tab character
" softtabstop:  fine tunes the amount of whitespace to be added
" shiftwidth:   determines the amount of whitespace to add in normal mode
" expandtab:    when on use space instead of tab
" textwidth:    text wrap width
" autoindent:   autoindent in new line
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set textwidth   =79
set expandtab
set autoindent
set cindent
set backspace   =indent,eol,start
set whichwrap   =s,b

"set listchars=tab:›\ ,nbsp:␣,trail:•,precedes:«,extends:»
"set listchars=tab:›\ ,space:·,nbsp:␣,trail:•,eol:¬,precedes:«,extends:»
set encoding=utf-8

set splitright
set splitbelow

set noswapfile
set nocompatible
set modifiable
set encoding=utf-8
set autoread
set confirm

set ambiwidth=double

filetype on
set sm!

" highlight current line and current column
set cursorline
" set cursorcolumn
" :highlight Cursorline cterm=bold ctermbg=lightgray

" set status bar

set laststatus=2
set statusline=%1*\%<%F
set statusline+=%=%2*\%y%m%r%h%w\ %*
set statusline+=%3*\%{&ff}\[%{&fenc}]\ %*
set statusline+=%4*\ %l:%L\ %c\ %*
set statusline+=%5*\%3p%%\%*
hi User1 cterm=none ctermfg=141 ctermbg=238
hi User2 cterm=none ctermfg=208 ctermbg=238
hi User3 cterm=none ctermfg=169 ctermbg=238
hi User4 cterm=none ctermfg=85 ctermbg=238
hi User5 cterm=none ctermfg=green ctermbg=238
" enable highlight search pattern
set hlsearch

" enable smartcase search snensitivity
set ignorecase
set smartcase

" show the matching part of pairs [] {} and ()
set showmatch

" remove trailing whitespace from python and fortran files
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.f90 :%s/\s\+$//e
autocmd BufWritePre *.f95 :%s/\s\+$//e
autocmd BufWritePre *.for :%s/\s\+$//e

set showcmd

set completeopt=longest,menu
set backspace=indent,eol,start

let g:python_highlight_all = 1

" search down into subfolders
" provides tab-completion for all file-releated tasks
" :find <filename>
set path+=**

" display all matching files when we tab complete
set wildmenu
" :b lets you autocomplete any open buffer

" ctrl+b to open and close explorer
inoremap <c-b> <Esc>:Lex<cr>:vertical resize 25<cr>
nnoremap <c-b> <Esc>:Lex<cr>:vertical resize 25<cr>

" auto pairs
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap < <><LEFT>
inoremap { {}<c-g>U<left>

" visually select the characters that are wanted in the search, then type // to search
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" CTRL-A is Select all
nmap <C-A> ggvG
imap <C-A> <c-o>gg <c-o>vG

" CTRL-Tab is Next window
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w

" use tab to complete
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
