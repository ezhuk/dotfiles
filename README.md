# Dotfiles

Simple, yet powerful, configuration files for bash, git and vim, among
others.

## Installation

Clone this repository somewhere (e.g., ~/.dotfiles) and then run the
[installation script](install). It will create appropriate symlinks in
your home directory and won't replace already existing files unless told
otherwise.

```bash
git clone https://github.com/ezhuk/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install
```

Reload bash configuration for the changes to take effect either by
restarting the terminal or running this command:

```bash
source ~/.bash_profile
```

To change some Mac OS X defaults (see [osx](osx) for the details on what
is included), simply run the following in your terminal:

```bash
sudo ./osx
```

## License

Licensed under the [MIT license](LICENSE).
