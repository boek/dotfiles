export ZSH=/Users/boek/.oh-my-zsh                                                # Path to your oh-my-zsh installati    on.

# User configuration
source $ZSH/oh-my-zsh.sh                                                         # import
source $HOME/.aliases                                                            # import aliases
source $HOME/.sources                                                            # import sources

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi                  # init rbenv
~
