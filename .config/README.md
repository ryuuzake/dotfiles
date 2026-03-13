# .dotfiles

## Restore

```bash
git clone --bare https://github.com/YOU/dotfiles.git $HOME/.dotfiles
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
dots checkout   # checks out all tracked files to their real paths
dots config --local status.showUntrackedFiles no
dots submodule update --init --recursive
```

## Setup

```bash
git init --bare $HOME/.dotfiles
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
dots config --local status.showUntrackedFiles no
```

## Update upstream submodule

e.g. `.config/nvim`

```bash
dots submodule update --remote .config/nvim
dots commit -m "update nvim to latest"
dots push
```
