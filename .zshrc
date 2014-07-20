# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
export EDITOR='vim'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="custom"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git fasd)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$HOME/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$HOME/.rbenv/bin:/usr/local/share/npm/bin:/usr/local/share/python:/usr/local/heroku/bin
export NODE_PATH="/usr/local/lib/node_modules"
export PYTHONPATH=$(brew --prefix)/lib/python2.7/site-packages:$PYTHONPATH


eval "$(rbenv init -)"

# Tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Custom ls colors
export LSCOLORS=Axhxaxaxaxaxaxaxaxaxax

commit() {
  git commit -am "$*"
}

preexec () {
  # Check if tmux is running
  if [ "$TERM" = "screen-256color-italic" ] && [ -n "$TMUX" ]; then
    # Store CWD in a tmux session veriable.
    tmux setenv TMUXCMD_$(tmux display -p "#I") "$1"
  fi
}

precmd () {
  # Check if tmux is running
  if [ "$TERM" = "screen-256color-italic" ] && [ -n "$TMUX" ]; then
    # Store CWD in a tmux session veriable.
    tmux setenv TMUXPWD_$(tmux display -p "#I") "$PWD"
    # Run the script that sets the tmux statusbar.
    tmux_set_status.sh
  fi
}
