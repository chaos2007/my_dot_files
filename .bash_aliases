alias full_upgrade='sudo apt update && sudo apt upgrade && sudo apt dist-upgrade && sudo apt autoremove && sudo apt autoclean'
alias global_ip='curl http://icanhazip.com'

if [ -f ~/git/my_dot_files/my_bash_profile ]; then
    . ~/git/my_dot_files/my_bash_profile
fi