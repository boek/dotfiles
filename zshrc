# Path to your oh-my-zsh installation.
export ZSH=/Users/jeffboek/.oh-my-zsh

ZSH_THEME="theunraveler" # Set name of the theme to load.
plugins=(git)

# User configuration
source $ZSH/oh-my-zsh.sh                                                         # import
source $HOME/.aliases                                                            # import aliases
source $HOME/.sources                                                            # import sources

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi                  # init rbenv
export EDITOR='vim'                                                              # editor
