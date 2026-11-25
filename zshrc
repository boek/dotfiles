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

if (( $+commands[atuin] )); then
  eval "$(atuin init zsh --disable-up-arrow)"
fi

# Machine-specific config & secrets, never committed (see zshrc.local.example)
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

export JOURNAL_DAILY_FORMAT='{MMMM} {d}, {yyyy}.md'   # November 25, 2026.md
export JOURNAL_WEEKLY_FORMAT='{GGGG}-W{w}.md'         # 2026-W48.md, 2026-W9.md
export JOURNAL_MONTHLY_FORMAT='{MMMM} {yyyy}.md'      # November 2026.md
export JOURNAL_YEARLY_FORMAT='{yyyy}.md'              # 2026.md
