" ========================================
" 基础设置
" ========================================
syntax on
set nocompatible
set encoding=utf-8
set termguicolors
set background=dark
if !has('gui_running')
    set t_Co=256
endif

" ===========================
" 行号显示
" ===========================
" 普通模式显示相对行号，插入模式显示绝对行号
set number relativenumber
autocmd InsertEnter * set norelativenumber
autocmd InsertLeave * set relativenumber

" ===========================
" Monokai 暗色配色方案
" ===========================
highlight Normal        ctermfg=251 ctermbg=234 guifg=#f8f8f2 guibg=#272822
highlight LineNr        ctermfg=244 guifg=#75715e
highlight CursorLineNr  ctermfg=230 guifg=#f8f8f2
highlight CursorLine    ctermbg=236 guibg=#3e3d32
highlight Keyword       ctermfg=204 guifg=#f92672
highlight Statement     ctermfg=204 guifg=#f92672
highlight Type          ctermfg=81  guifg=#66d9ef
highlight Constant      ctermfg=209 guifg=#fd971f
highlight Number        ctermfg=209 guifg=#fd971f
highlight Boolean       ctermfg=209 guifg=#fd971f
highlight String        ctermfg=142 guifg=#e6db74
highlight Character     ctermfg=142 guifg=#e6db74
highlight Comment       ctermfg=241 guifg=#75715e
highlight Todo          ctermfg=221 guifg=#f8f8f0 cterm=bold gui=bold
highlight Function      ctermfg=81  guifg=#66d9ef
highlight Identifier    ctermfg=81  guifg=#66d9ef
highlight Search        ctermbg=220 ctermfg=0 guibg=#fd971f guifg=#272822
highlight IncSearch     ctermbg=214 ctermfg=0 guibg=#f92672 guifg=#272822
highlight MatchParen    ctermbg=237 ctermfg=15 guibg=#49483e guifg=#f8f8f2

" ===========================
" 界面显示
" ===========================
set showcmd
set showmode
set laststatus=2
set statusline=%#User1#\ %F\ %m%r%h%w
set statusline+=%=%#User2#\ [%Y][%{&ff}][%{&fenc}]
set statusline+=%#User3#\ %l:%L:%c
set statusline+=%#User4#\ %p%%
highlight User1 cterm=none ctermfg=141 ctermbg=238
highlight User2 cterm=none ctermfg=208 ctermbg=238
highlight User3 cterm=none ctermfg=169 ctermbg=238
highlight User4 cterm=none ctermfg=85  ctermbg=238

" ===========================
" 鼠标和窗口
" ===========================
set mouse=a
set splitright
set splitbelow

" ===========================
" 缩进与空格
" ===========================
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set cindent
set backspace=indent,eol,start
set whichwrap=s,b
set textwidth=79

" ===========================
" 搜索与高亮
" ===========================
set hlsearch
set ignorecase
set smartcase
set showmatch
set incsearch

" ===========================
" 自动清理行尾空格
" ===========================
autocmd BufWritePre *.py,*.f90,*.f95,*.for :%s/\s\+$//e

" ===========================
" 自动补全和路径
" ===========================
set completeopt=longest,menu
set path+=**
set wildmenu

" ===========================
" 快捷键
" ===========================

" 文件浏览器 Ctrl-b
nnoremap <C-b> :Lex 25<CR>
inoremap <C-b> <Esc>:Lex 25<CR>

" 自动括号和引号
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap < <><Left>
inoremap <C-l> ()<Left>

" 搜索选中内容
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" 全选 Ctrl-A
nmap <C-A> ggvG
imap <C-A> <C-o>gg<C-o>vG

" 窗口切换 Ctrl-Tab
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w

" Tab 补全
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR>    pumvisible() ? "\<C-y>" : "\<CR>"

" ===========================
" Python 高亮
" ===========================
let g:python_highlight_all = 1

" ===========================
" 其他优化
" ===========================
set noswapfile
set autoread
set confirm
set ambiwidth=double

