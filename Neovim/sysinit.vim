" windows only。
" 用于将 nvim 的数据放到 C 盘之外
" 将此文件置于 <Neovim_Install_Directory>\share\nvim\ 下.

" 可以把$XDG_CONFIG_HOME和$XDG_DATA_HOME设置成不同目录，这里直接放一个目录了"
let $XDG_CONFIG_HOME="D:\\Neovim\\vimfiles-nvim"
let $XDG_DATA_HOME="D:\\Neovim\\vimfiles-nvim"
set runtimepath+=$XDG_DATA_HOME\site,$XDG_CONFIG_HOME
