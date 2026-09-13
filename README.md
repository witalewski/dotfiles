# Dotfiles

Personal macOS dotfiles managed with Git and GNU Stow.

## Setup

```sh
./install.sh
stow -t "$HOME" home
```

The `home/` directory mirrors files that should be symlinked into `$HOME`.
