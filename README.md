requirements
```
sudo apt install tmux python-pip git vim tree python3-dev python3-pip
sudo pip install powerline-shell thefuck
```

Create Symbolic links.
```bash
ln -sf ~/git/my_dot_files/.bash_aliases ~/.bash_aliases
ln -sf ~/git/my_dot_files/.powerline-shell.json ~/.powerline-shell.json
```

Clone down vundle and create Symbolic link for your vimrc file and install plugins
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -sf ~/git/my_dot_files/.vimrc ~/.vimrc
vim +PluginInstall +qall
```

To update your setup enter the following commands.
```bash
vim +PluginInstall +qall
sudo pip install powerline-shell --upgrade
sudo pip install thefuck --upgrade
```
