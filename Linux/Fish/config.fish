# 关闭欢迎语
set -U fish_greeting 

# 添加环境变量
set -x PATH $PATH ~/.local/bin

# 设定 XDG 相关目录
set -x XDG_CONFIG_HOME ~/.config
set -x XDG_DATA_HOME ~/.local/share
set -x XDG_CACHE_HOME ~/.cache

# 输入法相关
set -x GTK_IM_MODULE fcitx
set -x QT_IM_MODULE fcitx
set -x XMODIFIERS @im=fcitx

# intel硬解驱动
set -x LIBVA_DRIVER_NAME iHD

# 管理 dotfile/dotdir
source $XDG_CONFIG_HOME/fish/dotfile.fish
