# Adding scripts directories to path
export PATH=$PATH:$HOME/scripts
export PATH=$PATH:$HOME/research/scripts

# Adding GOPATH
export PATH=$PATH:$(go env GOPATH)/bin

# Specifying vim as default editor
export EDITOR=nvim

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Changing coloration of autocomplete dirs
# eval "$(dircolors -p | \
#   sed 's/ 4[0-9];/ 01;/; s/;4[0-9];/;01;/g; s/;4[0-9] /;01 /' | \
#   dircolors /dev/stdin)"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    fzf
    git
    history
    # tmux
    vi-mode
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Setting up vi-mode key mappings
bindkey -v
bindkey 'jk' vi-cmd-mode

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias zshconfig="vim ~/.zshrc"
alias setzsh="source ~/.zshrc"
alias vim=nvim

# Setting up dbus env variables to run EOG/other gui applications remotely without errors
# export $(dbus-launch)

# Setting TERM to enable 256 color applications
export TERM=screen-256color

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Adding python3 bin to path
export PATH=$PATH:/home/smanjunath/.local/bin

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/3.2.0/bin:$PATH"
# export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Confluence setup
# export CONFLUENCE_USERNAME=shashankmanjunath14@gmail.com
# export CONFLUENCE_USERNAME=manjunath.sh@northeastern.edu
# export CONFLUENCE_PASSWORD=$(cat ~/.confluence/API_TOKEN)
# export CONFLUENCE_ENDPOINT=https://smanjunath.atlassian.net/wiki

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/shashankmanjunath/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/shashankmanjunath/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/shashankmanjunath/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/shashankmanjunath/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/Users/shashankmanjunath/miniconda3/etc/profile.d/mamba.sh" ]; then
    . "/Users/shashankmanjunath/miniconda3/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

# Creating tunnel command for quartz
# alias quartz-tunnel="ssh -f -N -L 1313:localhost:1313 research-server"

# Aliasing matlabo for terminal usage
alias matlab="/Applications/MATLAB_R2022b.app/bin/matlab -nodesktop"

# Setting up MATLAB DYLD_LIBRARY_PATH for use with python
export DYLD_LIBRARY_PATH=/Applications/MATLAB_R2022b.app/bin/maca64:$DYLD_LIBRARY_PATH
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/Applications/MATLAB_R2023a.app/bin/glnxa64
