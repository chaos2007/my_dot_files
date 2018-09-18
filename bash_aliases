alias full_upgrade='sudo apt update && sudo apt upgrade && sudo apt dist-upgrade && sudo apt autoremove && sudo apt autoclean'
alias global_ip='curl http://icanhazip.com'
alias ssh_no_key='ssh -o PreferredAuthentications=keyboard-interactive,password -o PubkeyAuthentication=no'
alias cat='bat'
alias vim='nvim'

if [ -f ~/.my_bash_profile ]; then
    . ~/.my_bash_profile
fi
