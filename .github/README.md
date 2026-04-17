# dotfiles-Linux [![The Unlicense](https://img.shields.io/badge/License-The_Unlicense-green.svg)](/LICENSE)

My dotfiles at Debian 13 on WSL2.

## Recovery with `script`

### Set the shell to Zsh

```shell
sudo apt install zsh
chsh -s /bin/zsh
exec $SHELL -l
```

### Clone this repository as `dotfiles`

```shell
sudo apt install -y git
cd ~
git clone git@github.com:asumo-1xts/dotfiles-Linux.git dotfiles
cd ~/dotfiles
```

### Install tools and make symbolic-links

```shell
sudo apt install -y ${(f)"$(<packages.ini)"}
curl https://mise.run | zsh

zsh script/symbolic-link.sh

exec $SHELL -l
```

### Activate mise and Install others

```shell
mise trust && mise install

cargo install sheldon

zsh script/tree.sh

exec $SHELL -l
```

## Structure

```shell
.
├── LICENSE
├── package.json
├── package-lock.json
├── packages.ini
└── script
    ├── plot-tree.sh
    └── symbolic-link.sh

```
