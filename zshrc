export ZSH=$HOME/.oh-my-zsh                                                # Path to your oh-my-zsh installation.
# Gotham Shell
GOTHAM_SHELL="$HOME/.config/gotham/gotham.sh"
[[ -s $GOTHAM_SHELL  ]] && source $GOTHAM_SHELL
ZSH_THEME="robbyrussell"                                                         # Set name of the theme to load.
plugins=(bundler rbenv git)

# User configuration
source $ZSH/oh-my-zsh.sh                                                         # import
source $HOME/.aliases                                                            # import aliases
source $HOME/.sources                                                            # import sources

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi                  # init rbenv
export EDITOR='vim'                                                              # editor
