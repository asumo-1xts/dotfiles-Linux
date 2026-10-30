# dotfiles-Linux [![The Unlicense](https://img.shields.io/badge/License-The_Unlicense-green.svg)](/LICENSE)

My dotfiles at on WSL2.

## Recovery with `script`

### Install ssh-keygen and Git

```shell
sudo apt update && sudo apt upgrade -y
sudo apt install openssh-client
sudo apt install git
```

### Generate and register SSH key

```shell
cd ~
mkdir .ssh
cd .ssh
ssh-keygen -t ed25519
# Register SSH key in GitHub
ssh -T git@github.com
```

### Set the shell to Zsh

```shell
sudo apt install zsh
chsh -s /bin/zsh
exec $SHELL -l
```

### Clone this repository as `dotfiles`

```shell
cd ~
git clone git@github.com:asumo-1xts/dotfiles-Linux.git dotfiles
cd ~/dotfiles
```

### Install tools and make symbolic-links

```shell
zsh script/install.zsh
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

### How to operate Node.js for Oxfmt

不自由なくグローバルにOxfmtを使うために、Node.jsとnpmはaptでインストールする。\
また、Windows側のNPMを無効にするため、`/etc/wsl.conf`に以下を追記する。

```ini
[interop]
appendWindowsPath = false
```
