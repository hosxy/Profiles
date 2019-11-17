if has("win32")
    let $PlugPath=$XDG_DATA_HOME."\\nvim-data\\plugged"
    
    " 改变 swapfile 文件位置 
    set directory=$XDG_DATA_HOME\\nvim-data\\swap
else
    let $PlugPath=$HOME."/.local/share/nvim/plugged"
endif

""""""""""""""""""""""""""""""""""  Install Plugin """"""""""""""""""""""""

call plug#begin('$PlugPath')

" 主题
Plug 'morhetz/gruvbox'

" 自动补全括号等
Plug 'jiangmiao/auto-pairs'

" 缩进指示线
Plug 'Yggdroot/indentLine'

" 自动保存
Plug '907th/vim-auto-save'

" 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 语法高亮
Plug 'dag/vim-fish'
Plug 'rust-lang/rust.vim'

" 目录树
Plug 'scrooloose/nerdtree'

" sudo 保存(Unix-like Only)
"Plug 'lambdalisue/suda.vim'

" vim中文文档翻译
"Plug 'yianwillis/vimcdoc'



call plug#end()



"""""""""""""""""""""""""""""""""  Configure  """""""""""""""""""""""""""
" 显示行号
set number

" 语法高亮
syntax on

" Tab键的宽度
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" 自动缩进
set autoindent
set smartindent

" 高亮当前行
set cursorline

" 终端使用真彩色(guicolor)
set termguicolors

" 开启鼠标支持
set mouse=a

" 使用系统剪切版
set clipboard=unnamed

" 设置默认进行大小写不敏感查找,如果有包含大写字母则进行大小写敏感查找
set ignorecase
set smartcase

""""""""""""""""""""""""""""""""""""" gruvbox 
let g:gruvbox_bold=1
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_improved_strings=1

" 配色方案
set background=dark
colorscheme gruvbox


""""""""""""""""""""""""""""""""""""" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='light'
"显示 buffer 编号
let g:airline#extensions#tabline#buffer_nr_show = 1


""""""""""""""""""""""""""""""""""""" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 最后是个 window 是 NERDTree 时自动退出
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeWinSize=20






"""""""""""""""""""""""""""""""""""""""" Key Map """"""""""""""""""""""""""""""""""""""""
"切换 buffer
nnoremap <F8> :bp<CR>
nnoremap <F9> :bn<CR>

" 以 root 权限保存文件
cmap w!! w suda://%

if has("win32")
    " windows 下取消
    cunmap w!!
endif
