#Dotfiles

Simple configuration files for bash, git, vim and OS X.

## Installation

Use the following commands to clone this repository and create symlinks in your home directory:

```bash
git clone https://github.com/ezhuk/dotfiles.git ~/dotfiles
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.vimrc ~/.vimrc
```

Reload bash configuration for the changes to take effect either by restarting the terminal or running this command:

```bash
source ~/.bash_profile
```

## License

Licensed under the [MIT license](LICENSE).
