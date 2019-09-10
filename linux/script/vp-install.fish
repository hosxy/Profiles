#!/usr/bin/env fish

function check_depends
    echo "checking depends ......"
    
    if [ \( -f /usr/bin/git \) -a \( -f /usr/bin/vim \) ]
        echo "depends is OK!"
        echo \n
    else 
        echo "please install vim and git. For Example:"
        echo "  pacman -S git vim"
        echo "  apt install git vim"
        exit 0
    end
end

function install
    echo "installing $NAME ......"
    mkdir -p $INSTALL_DIR
    git clone {$URL}.git $INSTALL_DIR
    echo "----------------------$NAME install finish----------------------------"
    echo \n
end

function check_install
    echo "checking $NAME ......"
    if [ -d $INSTALL_DIR ]
        echo "$NAME have installed, skip"
        echo \n
    else
        echo "check OK!"
        install
    end

end

function repo
    set -g URL $argv[1]
    set PARENT_DIR $argv[2] 
    set -g NAME (string split -r -m1 / $URL)[2]

    if [ -z $PARENT_DIR ]
        set PARENT_DIR $NAME
    end

    set -g INSTALL_DIR ~/.vim/pack/$PARENT_DIR/start/$NAME
    
    check_install
end


check_depends

repo https://github.com/Yggdroot/indentLine
repo https://github.com/jiangmiao/auto-pairs
repo https://github.com/dag/vim-fish


