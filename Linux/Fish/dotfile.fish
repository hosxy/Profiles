# GTK2
set -x GTK2_RC_FILES $XDG_CONFIG_HOME/gtk-2.0/gtkrc

# 安卓
set -x ANDROID_SDK_HOME $XDG_CONFIG_HOME/android

# GPG
set -x GNUPGHOME $XDG_DATA_HOME/gnupg

# weechat
set -x WEECHAT_HOME $XDG_DATA_HOME/weechat 

# bash
set -x HISTFILE $XDG_DATA_HOME/bash/history
set -x BASH_COMPLETION_USER_FILE $XDG_DATA_HOME/bash/bash_completion

# vim
set -x MYVIMRC $XDG_CONFIG_HOME/vim/vimrc
set -x MYGVIMRC $XDG_CONFIG_HOME/vim/gvimrc
set -x VIMINIT :source $MYVIMRC
set -x GVIMINIT :source $MYGVIMRC

# XAUTHORITY
#set -x XAUTHORITY $XDG_CACHE_HOME/Xauthority
