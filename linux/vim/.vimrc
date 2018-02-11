"启用鼠标右键粘贴
if has('mouse')
	set mouse -=a
endif

" 显示行号
set number

" 开启语法高亮
syntax on

" 语法配色方案
"set background=dark
"colorscheme solarized
colorscheme molokai

" 高亮当前行
set cursorline

" 设置tab键为4个空格
set ts=4
set expandtab
set autoindent


""""""""""""""""""""""""""""""""" GVIM """"""""""""""""""""""""""""""""""""""""""

if has("gui_running")
    
    
" 隐藏工具栏
set guioptions-=T 

" 隐藏左侧滚动条
"set guioptions-=L 

" 隐藏右侧滚动条
"set guioptions-=r 

" 隐藏底部滚动条
"set guioptions-=b 

" 隐藏Tab栏
"set showtabline=0 

" 语法配色方案
set background=dark
colorscheme solarized
"colorscheme molokai

" 高亮当前列
"set cursorcolumn

" 设置窗口大小
set lines=34 columns=95

" 设置字体
set guifont=DejaVu\ Sans\ Mono\ 12
"set guifont=Hack\ 12

endif






""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""					插件设置						"""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""" indentLine 缩进指示线

" 缩进指示线颜色
"let g:indentLine_color_gui = '#A4E57E'



""""""""""" auto save

"开启 autosave
let g:auto_save = 1


""""""""""auto pairs


""""""""""cpp enhanced highlight

" 高亮类名
let g:cpp_class_scope_highlight = 1 

" 高亮数字
let g:cpp_member_variable_highlight = 1

" 高亮 声明类
let g:cpp_class_decl_highlight = 1

" 
let g:cpp_concepts_highlight = 1

" 高亮模板
" let g:cpp_experimental_simple_template_highlight = 1    " 通用 但 大文件慢
let g:cpp_experimental_template_highlight = 1			" 快 但可能无效


""""""""" vim airline

" 开启 tab/buffer指示
let g:airline#extensions#tabline#enabled = 1

" airline 主题
let g:airline_theme='light'

" 启用patch字体
let g:airline_powerline_fonts = 1

"""""""" Nredtree 目录树

