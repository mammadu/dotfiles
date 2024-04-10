# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias l='ls -l'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# custom user additions
## default editor
export EDITOR="nvim"

## increase history size
export HISTSIZE=1000
export HISTFILESIZE=1000

## custom aliases


## applications
### asdf
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"

### fzf
export FZF_DEFAULT_COMMAND='find .'
source /usr/share/fzf/completion.bash
source /usr/share/fzf/key-bindings.bash

### fasd
eval "$(fasd --init auto)"

### yay
# this line skips the clean, diff, and edit menus when updating with yay. It also doesn't exclude any application that can be upgraded
alias yolo='yay --cleanmenu=false --diffmenu=false --editmenu=false --answerupgrade None'

### xclip
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
