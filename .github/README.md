# dotfiles-Linux

My dotfiles at Debian 13 on WSL2.

## Recovery with `script`

### 1. Set the shell to Zsh

```shell
sudo apt install zsh && chsh -s /bin/zsh

exec $SHELL -l
```

### 2. Install tools and make symbolic-links

```shell
sudo apt install -y git
cd ~ && git clone git@github.com:asumo-1xts/dotfiles.git
cd ~/dotfiles && sudo apt install -y ${(f)"$(<packages.ini)"}

curl https://mise.run | zsh
zsh script/symbolic-link.sh

exec $SHELL -l
```

### 3. Activate mise and Install others

```shell
cd ~/dotfiles
mise trust && mise install

cargo install sheldon

curl -fsSL https://raw.githubusercontent.com/unhappychoice/gitlogue/main/install.sh | zsh

zsh script/install-wslu.sh

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
    ├── install-wslu.sh
    ├── plot-tree.sh
    └── symbolic-link.sh

```
