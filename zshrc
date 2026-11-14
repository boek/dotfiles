export EDITOR='hx'
export VISUAL="hx"

if [[ "$TERM" == *256color* ]]; then
  export COLORTERM=truecolor
fi

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.swiftly/bin:$PATH"

autoload -Uz compinit
compinit

export PNPM_HOME="/Users/boek/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

export STARSHIP_CONFIG=~/.config/starship/config.toml

eval "$(starship init zsh)"

# Machine-specific config & secrets, never committed (see zshrc.local.example)
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
