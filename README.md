# vimrc

I'm making this repository so that I don't have to keep copying my .neovimrc
around when I use different computers. It's small now, but just give me a few
monthes ...

If using Vim, install Vundle using
```{sh}
mkdir -p ~/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

If using Neovim, install Vundle using the instructions in [this
page](https://www.circuidipity.com/neovim/). You always forget.
```{sh}
mkdir -p ~/.config/nvim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
```

Then run

```{sh}
nvim +PluginInstall +qall
```

to install your plugins.
