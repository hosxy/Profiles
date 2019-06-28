# 用 su 切换用户时指定 shell 为 fish
function su
    /usr/bin/env su --shell=/usr/bin/fish $argv
end
