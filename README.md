#Dotfiles

Simple, yet powerful, configuration files for bash, git, vim and OS X.

## Installation

Use the following commands to clone this repository and create symlinks in your home directory:

```bash
git clone https://github.com/ezhuk/dotfiles.git ~/dotfiles
ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.vimrc ~/.vimrc
```

Reload bash configuration for the changes to take effect either by restarting the terminal or running this command:

```bash
source ~/.bash_profile
```

Alternatively, [GNU Stow](http://www.gnu.org/software/stow/) can be used to manage symlinks to the configuration files. You may need to build and install it from source code if it is not available by default.

To change Mac OS X defaults, simply run the following in your terminal:

```bash
sudo ./.osx
```

## License

Licensed under the [MIT license](LICENSE).
