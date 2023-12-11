
function dsize()
{
    dir=$(pwd)
    if [ -n "$1" ]; then
            dir=$1
    fi
    du -hs "$dir"
}
