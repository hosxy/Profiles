# 关闭欢迎语
set -U fish_greeting 

# 使用 nvidia 驱动运行
alias nvrun "env __NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia"
