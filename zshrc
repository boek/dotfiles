export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='hx'
   export VISUAL="hx"
 fi

export PATH="$HOME/.local/bin:$PATH"

fancy_date() {
  local d=$(date +%-d)
  local suffix=th
  case $d in
    11|12|13) ;;
    *1) suffix=st ;;
    *2) suffix=nd ;;
    *3) suffix=rd ;;
  esac
  date "+%B $d$suffix, %Y"
}

export PNPM_HOME="/Users/boek/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
