#https://stackoverflow.com/questions/16661982/check-folder-size-in-bash

function dsize()
{
    dir=$(pwd)
    if [ -n "$1" ]; then
            dir=$1
    fi
    du -hs "$dir"
}
