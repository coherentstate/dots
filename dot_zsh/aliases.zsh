#-----------------Shortcuts to config files-----------------
alias fishconf='nvim "$HOME/.config/fish/config.fish"'
alias zshconf='nvim "$HOME/.zshrc"'
alias zshal='nvim $HOME/.zsh/aliases.zsh'
alias termconf='nvim "$HOME/.config/kitty/kitty.conf"'
alias viconf='nvim "$HOME/.config/nvim/init.vim"'

#-------------Some basic shell command shortcuts------------
alias lla='lsd -lA'
alias ll='lsd -l'
alias la='lsd -A'
alias ls='lsd'
alias rm='rm -I'
alias cp='cp -i'
alias mv='mv -i'
alias c="clear"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias q='exit'
alias v='nvim'
#alias fd='fd --color=always'
alias ytdl='youtube-dl'
# alias cht='cht.sh'
alias dmenu='dmenu -l 20'
alias path="echo $PATH | tr ':' '\n' | nl"
alias back="cd -"
alias cm="chezmoi"
# alias kitty='kitty -o "linux_display_server=x11"'

#-------------Some basic git command shortcuts-------------
alias gs='git status'
alias ga='git add .'
alias gc='git commit'
alias gca='git commit --amend'
alias gp='git push origin main'
alias lg='lazygit'
# Dotfile management in git bare repo
alias dot='git --git-dir=$HOME/.dot.git/ --work-tree=$HOME'

#---------------Shortcuts to directories-------------------
alias code='cd "$HOME/code" && ls'
alias dots='cd "$HOME/.dotfiles" && ls'
alias snip='cd "$HOME/.config/nvim/UltiSnips" && ls'
