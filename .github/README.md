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

#### Install Git

```shell
sudo apt install git
```

#### Set SSH key in `~/.ssh/config`

```
Host github
  HostName github.com
  User git
  IdentityFile ~/.ssh/github
  IdentitiesOnly yes
```

#### Run

```shell
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

exec $SHELL -l
```
