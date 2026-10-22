#!/bin/zsh

rm ~/.zshrc
rm -rf ~/.config
mkdir -p ~/.config
mkdir -p ~/.config/sheldon
rm -rf ~/.vscode-server/data/Machine
mkdir -p ~/.vscode-server/data/Machine

# 絶対パスを使用すること！
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.config/alias.zsh ~/.config/alias.zsh
ln -s ~/dotfiles/.config/functions.zsh ~/.config/functions.zsh
ln -s ~/dotfiles/.config/mise.toml ~/.config/mise.toml
ln -s ~/dotfiles/.config/starship.toml ~/.config/starship.toml
ln -s ~/dotfiles/.config/sheldon/plugins.toml \
  ~/.config/sheldon/plugins.toml
ln -s ~/dotfiles/.vscode-server/data/Machine/settings.json \
  ~/.vscode-server/data/Machine/settings.json
