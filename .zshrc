unsetopt nomatch # 取得先が存在しなくてもエラーにしない
autoload -Uz compinit && compinit # 補完のための呪文

eval "$(~/.local/bin/mise activate zsh)"
eval "$(zoxide init zsh)"
eval "$(sheldon source)"
eval "$(starship init zsh)"
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"

source ~/dotfiles/.config/alias.zsh
source ~/dotfiles/.config/functions.zsh

# export GPG_TTY=$(tty)
