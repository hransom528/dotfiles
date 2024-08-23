export editor="/bin/vim"
export visual="/bin/vim"
export MAIL="/var/mail/harris"
export PATH="/home/harris/build/hx:/opt/microchip/xc8/v2.20/bin:$PATH" 

#export PATH="/home/harris/.local/bin:/home/harris/build/hx:/opt/microchip/xc8/v2.20/bin:$PATH" 
#export PATH="/home/harris/go/bin:$PATH"
#export PATH="/opt/Ghidra/ghidra:$PATH"

alias clr="clear"
alias cls="clear"
alias github="cd ~/Documents/Github/"
alias cd..="cd .."
alias ..="cd .."
alias rpi="ssh pi@10.0.0.114"
alias calculator="bc"
alias close="exit"
alias wtf="wtfutil"
alias anaconda-nav="anaconda-navigator"
alias grep='grep --color=auto'
alias ll='ls -l'
#alias lc='colorls'
alias ls='colorls'

if [ -n "$BASH_VERSION" -a -n "$PS1" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi
