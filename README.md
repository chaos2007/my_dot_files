requirements
```
sudo ./install -d ./ -c packages.conf.yaml -p dotbot_plugin_aptget/aptget.py
./install -d ./ -c pip_install.conf.yaml -p dotbot-pip/pip.py
./install
```

Clone down vundle and create Symbolic link for your vimrc file and install plugins
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```

To update your setup enter the following commands.
```bash
vim +PluginInstall +qall
```
