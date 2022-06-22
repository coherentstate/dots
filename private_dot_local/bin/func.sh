#!/bin/sh

cdls() {
    if [ -z "$1" ]; then
        printf "✘✘ You forgot to specify the directory name! ✘✘\n" && lsd -a

    else
        cd "$1" && lsd -a
        echo "✓✓ Done!"
    fi
}

mkcd() {
    if [ -z "$1" ]; then
        echo "✘✘ You forgot to specify the directory name! ✘✘"
    else
        mkdir "$1" && cd "$1" || exit
        echo "✓✓ Done!"
    fi
}
