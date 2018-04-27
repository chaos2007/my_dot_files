requirements
```
sudo apt install tmux python-pip
sudo pip install powerline-shell
```


Add this block to your .bash_aliases file.
```bash
if [ -f ~/git/my_dot_files/my_bash_aliases ]; then
    . ~/git/my_dot_files/my_bash_aliases
fi
```

Add this block to your .bashrc file.
```bash
if [ -f ~/git/my_dot_files/my_bash_profile ]; then
    . ~/git/my_dot_files/my_bash_profile
fi
```

Copy off powerline config.
```
cp ~/git/my_dot_files/.powerline-shell.json ~/.powerline-shell.json
```
