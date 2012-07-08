" 项目: gvim 配置文件

source $VIMRUNTIME/mswin.vim
behave mswin

" 设置配色方案
colo zenburn
" 设置用于GUI图形用户界面的字体列表。
"set guifont=SimSun\ 12
" ubuntu下字体间距过大的问题。
set guifont=monospace\ 14
"
set nocompatible
" 设定文件浏览器目录为当前目录
set bsdir=buffer
set autochdir
" 设置编码
set enc=utf-8
" 设置文件编码
set fenc=utf-8
" 设置文件编码检测类型及支持格式
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
" 指定菜单语言
set langmenu=zh_CN.UTF-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" 设置开启语法高亮
syntax on
"显示行号
set nu!
" 查找结果高亮度显示
set hlsearch
" tab宽度
set tabstop=4
set cindent shiftwidth=4
set autoindent shiftwidth=4
set expandtab
set smarttab

set backspace=indent,eol,start
set complete=.,w,b,k,t,i
set foldmethod=marker

" 保存文件格式
set fileformats=unix,dos
" 命令行高度
set cmdheight=1
" 中文帮助
if version > 603
set helplang=cn
endi

" 获取当前目录
func! GetPWD()
    return substitute(getcwd(), "", "", "g")
endf

" 命令行于状态行
set ch=1
set stl=\ [File]\ %F%m%r%h%y[%{&fileformat},%{&fileencoding}]\ %w\ \ [PWD]\ %r%{GetPWD()}%h\ %=\ [Line]%l/%L\ %=\[%P]
set ls=2 " 始终显示状态行

set mouse=

set magic
set showmatch
set mat=2
set noincsearch
set ignorecase smartcase

set linespace=4


let mapleader=","
" Normal Mode, Visual Mode, and Select Mode,
" use <Tab> and <Shift-Tab> to indent
nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv

" use Meta key(Windows:Alt) to move cursor in insert mode.
" Note: if system install "Lingoes Translator",
"   you will need change/disabled hot key.
noremap! <C-j> <Down>
noremap! <C-k> <Up>
noremap! <C-h> <left>
noremap! <C-l> <Right>

" Tab标签控制
map <C-t> :tabnew<cr>
map <C-n> :tabnext<cr>
map <C-p> :tabpre<cr>

" Window窗口的控制
map <leader>wj <C-w><Down>
map <leader>wk <C-w><Up>
map <leader>wh <C-w><Left>
map <leader>wl <C-w><Right>
map <leader>w <C-w>

map <Up> gk
map <Down> gj
nmap <C-z> u
nmap <C-y> .
noremap! <C-s> <ESC>:w<cr>i
nmap <C-s> <ESC>:w<cr>

" NERDTree {{{
nmap <F1> :NERDTree<cr>
" }}}

" zen coding {{{
let g:user_zen_settings = {
\  'indentation' : '  ',
\  'perl' : {
\    'aliases' : {
\      'req' : 'require '
\    },
\    'snippets' : {
\      'use' : "use strict\nuse warnings\n\n",
\      'warn' : "warn \"|\";",
\    }
\  }
\}

let g:user_zen_expandabbr_key = ';<tab>' 
let g:user_zen_next_key = ',<tab>'
let g:user_zen_prev_key = '<leader><tab>'  
let g:use_zen_complete_tag = 1 
" }}}
