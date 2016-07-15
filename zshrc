export ZSH=$HOME/.oh-my-zsh                                                # Path to your oh-my-zsh installation.
export EVENT_NOKQUEUE=1                                                    # macOS Sierra fix
ZSH_THEME="odin"                                                   # Set name of the theme to load.
plugins=(bundler rbenv git)

# User configuration
source $ZSH/oh-my-zsh.sh                                                   # import
source $HOME/.aliases                                                      # import aliases
source $HOME/.sources                                                      # import sources

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi            # init rbenv
export EDITOR='vim'                                                        # editor
