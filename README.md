requirements
```
sudo apt install tmux python-pip
sudo pip install powerline-shell
```

Create Symbolic links.
```bash
ln -sf ~/git/my_dot_files/.bash_aliases ~/.bash_aliases
```

Add this block to your .bashrc file.
```bash
if [ -f ~/git/my_dot_files/my_bash_profile ]; then
    . ~/git/my_dot_files/my_bash_profile
fi
```

Copy off powerline config.
```
ln -sf ~/git/my_dot_files/.powerline-shell.json ~/.powerline-shell.json
```

Clone down vundle and create Symbolic link for your vimrc file and install plugins
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -sf ~/git/my_dot_files/.vimrc ~/.vimrc
vim +PluginInstall +qall
```
