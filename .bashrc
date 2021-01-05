#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Add Scripts directory to path
export PATH="~/Scripts:$PATH"

#Aliases
export LANG=en_US.UTF-8
export LC_MESSAGES="C"

#Play video if mpv valid url is in clipboard
alias play='notify-send -t 3000 --icon=video-television "Playing Video" "$(xclip -o)"; youtube-dl --cookies=~/Downloads/cookies.txt --mark-watched -o - "$(xclip -o)" | mpv -'

#Uses devour to swallow terminal windows for mpv
alias dmpv='~/Downloads/github/devour/devour.sh mpv'

#For my git bare repository for my dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

alias ssn='sudo shutdown now'
alias ls='ls --color=auto'

#Set shell prompt with powerline
PS1='[\u@\h \W]\$ '


function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

#Fix lines cut off when resizing terminal
for (( i=1; i<=$LINES; i++ )); do echo; done; clear

#System information when launching a temrinal with pfetch	
pfetch
