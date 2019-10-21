" 在 windows 下设定 runtimepath(不想将数据放到 C 盘)
" 先在 <nvim_install_directory>\share\nvim 下建立 sysinit.vim, 设置$XDG_CONFIG_HOME和$XDG_DATA_HOME,比如:
" let $XDG_CONFIG_HOME="D:\\Neovim\\vimfiles-nvim"
" let $XDG_DATA_HOME="D:\\Neovim\\vimfiles-nvim"
" 然后在此加入 runtimepath：
" set runtimepath+=$XDG_DATA_HOME\nvim-data\site,$XDG_CONFIG_HOME\nvim

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






""""""""""""""""""""""""""""""""""  Install Plugin """"""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

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
let g:gruvbox_contrast=hard
let g:gruvbox_improved_strings=1

" 配色方案
set termguicolors
set background=dark
colorscheme gruvbox


"Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


" 以 root 权限保存文件
" cmap w!! w suda://%
