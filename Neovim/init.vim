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

" 高亮当前行
set cursorline

" 终端使用真彩色(guicolor)
set termguicolors




""""""""""""""""""""""""""""""""""  Install Plugin """"""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')
" call plug#begin('$XDG_DATA_HOME\\nvim-data\\plugged')

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

" sudo 保存(Unix-like Only)
" Plug 'lambdalisue/suda.vim'

call plug#end()



"""""""""""""""""""""""""""""""""  Configure  """""""""""""""""""""""""""

" gruvbox 
let g:gruvbox_bold=1
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_improved_strings=1

" 配色方案
set background=dark
colorscheme gruvbox


"Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


" 以 root 权限保存文件
" cmap w!! w suda://%
