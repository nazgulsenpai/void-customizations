# .bashrc
numlockx
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias brave='flatpak run com.brave.Browser '
alias vpn='~/VPN/VRXPLVPN.sh'
alias calc='lumina-calculator'
PS1='[\u@\h \W]\$ '
export PATH=$PATH:/home/ricky/Programs/IntelliJ/idea-IC-222.4345.14/bin/
export QT_QPA_PLATFORMTHEME=qt5ct

. "$HOME/.cargo/env"

