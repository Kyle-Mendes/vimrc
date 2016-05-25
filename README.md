# vimrc
### Installation

1. Move all .files (excluding .gitignore) into you home directory
  - `mv .vimrc ~/`
  - `mv .gvimrc ~/`
  - `mv .vim ~/.vim`
1. Make sure you're running at least Vim version 7.4  If you're not, you can use brew to update / install.
1. Install [Vundle](https://github.com/VundleVim/Vundle.vim) `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
1. Open vim
1. run `:PluginInstall`
1. Follow the installation setup for [You Complete Me](https://github.com/Valloric/YouCompleteMe#mac-os-x-installation)
1. install [MacVim](https://github.com/b4winckler/macvim) for a GUI interface `brew install macvim`
  - You can open Mac Vim with `mvim` from the command line

That should be it. Some plugins might have extra steps to getting them installed.

I will update this with additional installation instructions, and comments on customizations to Vim and it's config.

### Learning
Need help learning how to use vim?  Tons of documentation is available online, and in many formats.  I'll be writing a bit about each of the plugins and their uses, but for now, you can check out the github pages for these plugins or, even better, use `:help <PluginName>` to the author's help documentation.

### Customizing
If there's anything you don't like, check the `.vimrc` to make changes.  I've tried to include comments for a lot of the changes I've made, so you can tweak or disable them as you find fit.

If there's a Plugin that you're not keen of, open up `~/.vim/vundles.vim` and comment out the line for the plugin you don't want.  Then, just run `:PluginClean` inside of vim to uninstall.
