requirements
```
sudo apt install tmux python-pip vim
sudo pip install powerline-shell
```

Add this block to your .bashrc file.
```bash
if [ -f ~/git/my_dot_files/my_bash_profile ]; then
    . ~/git/my_dot_files/my_bash_profile
fi
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
