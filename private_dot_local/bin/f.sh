#!/bin/bash

# Function to fuzzy search directories
fcd() {
    local searchdir
    local destdir
    # Check if argument is given provided and set search directory accordingly
    if [ -z "$1" ]; then
        searchdir="$PWD"
    else
        searchdir="$1"
    fi
    # Check if $searchdir is $HOME and format search accordingly. Don't show hidden files if home.
    if [[ "$searchdir" = "$HOME" ]]; then
        destdir="$(fd -t d . "$searchdir" | fzf --no-preview)" &&
            cd "$destdir" || echo "Directory not specified. Aborting search."
    else
        destdir="$(fd -t d -H -E .git . "$searchdir" | fzf --no-preview)" &&
            cd "$destdir" || echo "Directory not specified. Aborting search."
    fi
}

fpushd() {
    dir="$(dirs -v | fzf --no-preview)"
    cd "$dir" || echo "Directory not specified. Aborting search."
}
# Function to fuzzy kill processes. No need to use htop anymore!
fkill() {
    local pid
    if [ "$UID" != "0" ]; then
        pid=$(ps -f -u $UID | fzf --no-preview | awk '{print $2}')
    else
        pid=$(ps -ef | fzf --no-preview | awk '{print $2}')
    fi
    if [ "x$pid" != "x" ]; then
        echo "$pid" | xargs kill -"${1:-9}"
    fi
}

# Function to fuzzy view tldr pages
ftl() {
    if [ -z "$1" ]; then
        tldr --list | fzf --preview "echo {} | xargs tldr --color=always" | xargs -r tldr
    else
        tldr --list | rg "$1" | fzf --preview "echo {} | xargs tldr --color=always" | xargs -r tldr
    fi
}

# Function to fuzzy search and display text files. Useful for previewing code
fcat() {
    if [ -z "$1" ]; then
        fd -t f . "$PWD" | fzf | xargs -r bat
    else
        fd -t f . "$1" | fzf | xargs -r bat
    fi
}

# Function to fuzzy search for files and open them in nvim
fv() {
    if [ -z "$1" ]; then
        fd -t f . "$PWD" | fzf | xargs -r nvim
    else
        fd -t f . "$1" | fzf | xargs -r nvim
    fi
}

# Function to fuzzy search for pdf files and open them in zathura
fpdf() {
    if [ -z "$1" ]; then
        fd -t f -e pdf . "$HOME" | fzf | xargs -r zathura
    else
        fd -t f -e pdf . "$1" | fzf | xargs -r zathura
    fi
}
