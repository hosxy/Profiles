# 关闭欢迎语
set -U fish_greeting 

# 添加环境变量
set -x PATH $PATH ~/.local/bin

#设置默认文本编辑器为 vim
set -x EDITOR vim

# 输入法相关
set -x QT_IM_MODULE yong
set -x GTK_IM_MODULE yong
set -x XMODIFIERS @im=yong

# intel硬解驱动
set -x LIBVA_DRIVER_NAME iHD

# 设定 XDG 相关目录
set -x XDG_CONFIG_HOME ~/.config
set -x XDG_DATA_HOME ~/.local/share
set -x XDG_CACHE_HOME ~/.cache

# 管理 dotfile/dotdir
set -x GTK2_RC_FILES $XDG_CONFIG_HOME/gtk-2.0/gtkrc
set -x ANDROID_SDK_HOME $XDG_CONFIG_HOME/android

set -x GNUPGHOME $XDG_DATA_HOME/gnupg
set -x HISTFILE $XDG_DATA_HOME/bash/history
set -x BASH_COMPLETION_USER_FILE $XDG_DATA_HOME/bash/bash_completion

#set -x XAUTHORITY $XDG_CACHE_HOME/Xauthority