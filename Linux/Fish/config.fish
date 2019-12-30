# 关闭欢迎语
set -U fish_greeting 

# 一些 alias
alias cat bat
alias cp "cp --reflink=auto"
alias ls exa
alias ll "exa -l"
alias nvrun "env __NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia"
