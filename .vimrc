set nocompatible              " required
filetype off                  " required" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()" alternatively, pass a path where Vundle should install plugins"call vundle#begin('~/some/path/here')" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"补全插件
Bundle 'davidhalter/jedi-vim'

set nu
set clipboard=unnamed " 系统剪切板

Plugin 'scrooloose/syntastic' "检查语法
Plugin 'nvie/vim-flake8' "PEP8代码风格
"Python代码漂亮点
let python_highlight_all=1
syntax on

"目录
Plugin 'scrooloose/nerdtree'
" 把F8 映射到NERDTree插件
" 在 vim 启动的时候默认开启 NERDTree（autocmd 可以缩写为 au）
autocmd VimEnter * NERDTree
" 按下 F2 调出/隐藏 NERDTree
 map<F1> :silent! NERDTreeToggle

"焦点窗口切换
set splitbelow
set splitright
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"自动缩进插件
Plugin 'vim-scripts/indentpython.vim'
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

"字体大小
"在xshell中设置吧

"不要过多空白字符
"Flagging Unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

"括号引号自动保存
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i

