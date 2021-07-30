#!/bin/sh


#if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
#then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
#fi
#export PATH

#local cmd cmd_file code
#    cmd_file=$(mktemp)
#    if broot --outcmd "$cmd_file" "$@"; then
#        cmd=$(<"$cmd_file")
#       rm -f "$cmd_file"
#        eval "$cmd"
#    else
#        code=$?
#        rm -f "$cmd_file"
#        return "$code"
#    fi

source /home/yup/.bashrc
br
