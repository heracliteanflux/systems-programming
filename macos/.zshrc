#####
#
# Powerlevel10k
#
#####

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



#####
#
# OhMyZsh
#
#####

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  zsh-autosuggestions     # cd ~/.oh-my-zsh/plugins && git clone https://github.com/zsh-users/zsh-autosuggestions
  zsh-syntax-highlighting # cd ~/.oh-my-zsh/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh



#####
#
# User configuration
#
####

export PATH="$PATH:/Users/df/bin"
export PATH="$PATH:/Users/df/bin/dsutils"

# APACHE SPARK
#SPARK_HOME="/opt/homebrew/Cellar/apache-spark/3.2.1/libexec"

# CHROME DRIVER
#export PATH="$PATH:/Users/df/.wdm/drivers/chromedriver/mac_arm64/114.0.5735.90"

# JAVA 8
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_311.jdk/Contents/Home"

# JAVA 11
#export JAVA_HOME="/opt/homebrew/Cellar/openjdk@11/11.0.15/libexec/openjdk.jdk/Contents/Home"

# JAVA 17
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-17.0.1.jdk/Contents/Home"

# JAVA 18
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-18.0.2.1.jdk/Contents/Home"
#export JAVA_HOME="/opt/homebrew/Cellar/openjdk/18.0.1/libexec/openjdk.jdk/Contents/Home"

# JAVA AUXILIARIES
export PATH="$PATH:$JAVA_HOME/bin"
export DERBY_HOME="$JAVA_HOME/db"
export JUNIT_HOME="$HOME/.java"
export PATH="$PATH:$JAVA_HOME/db/bin:$JUNIT_HOME"
export CLASSPATH=".:$DERBY_HOME/lib/derby.jar:$DERBY_HOME/lib/derbyclient.jar:$DERBY_HOME/lib/derbynet.jar:$DERBY_HOME/lib/derbytools.jar"
export CLASSPATH="$CLASSPATH:$JUNIT_HOME/junit-4.13.2.jar:$JUNIT_HOME/hamcrest-core-1.3.jar"
#:$DERBY_HOME/lib/derbyoptionaltools.jar:$DERBY_HOME/lib/derbyrun.jar:$DERBY_HOME/lib/derbyclient.jar:$DERBY_HOME/lib/derbynet.jar:."

# HADOOP
export HADOOP_VERSION="3.3.6"
export HADOOP_HOME="/opt/homebrew/Cellar/hadoop/$HADOOP_VERSION/libexec"
export PATH="$PATH:$HADOOP_HOME/bin"
export PATH="$PATH:$HADOOP_HOME/sbin"
export HADOOP_CONF_DIR="$HADOOP_HOME/etc/hadoop"
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR="$HADOOP_HOME/lib/native"
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib/native"
export HADOOP_CLASSPATH="$JAVA_HOME/lib/tools.jar:hadoop-examples.jar"
export HADOOP_USER_NAME="df"

export CLASSPATH="$CLASSPATH:$HADOOP_HOME/share/hadoop/client/*:$HADOOP_HOME/share/hadoop/common/*:$HADOOP_HOME/share/hadoop/hdfs/*:$HADOOP_HOME/share/hadoop/mapreduce/*:$HADOOP_HOME/share/hadoop/tools/*:$HADOOP_HOME/share/hadoop/yarn/*"

# MATHEMATICA
export PATH="$PATH:/Applications/Mathematica.app/Contents/MacOS"

# POSTGRES 15 (HOMEBREW)
export PATH="$PATH:/opt/homebrew/opt/postgresql@15/bin"

# RACKET
export PATH="$PATH:/Applications/Racket v8.9/bin"

# zlib, for use with hadoop native library
# For compilers to find zlib you may need to set:
#export LDFLAGS="-L/opt/homebrew/opt/zlib/lib"
#export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"
# For pkg-config to find zlib you may need to set:
#export PKG_CONFIG_PATH="/opt/homebrew/opt/zlib/lib/pkgconfig"

# RUBY
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"

# SQLITE3
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"



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
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias brow='arch --x86_64 /usr/local/Homebrew/bin/brew '
alias cat='bat -p --pager=none'
alias cl='conda list --show-channel-urls'
alias cu='conda update -n base -v -y -c defaults conda '
alias e="
exa -aFgHlS \
-I=\".DS_Store|.ipynb_checkpoints|.localized|.vscode|__pycache__|desktop.ini|\\\$RECYCLE.BIN\" "
alias findbig='find . -type f -size +1000 -exec ls -lh {} \; '

alias gl='git lg'
alias gls='git lg --stat'
alias glss='git lgs --stat'

alias l='ls -AeFGhls '
alias ll="
lsd -AFl              \
-I .DS_Store          \
-I .ipynb_checkpoints \
-I .localized         \
-I .vscode            \
-I __pycache__        \
-I desktop.ini        \
-I \\\$RECYCLE.BIN "
alias lower="tr '[A-Z]' '[a-z]' "
alias mv='mv -iv '
alias path="echo $PATH | tr : '\n' "
alias rand='echo `jot -r 1 0 1000`/1000 | bc -l | cut -c 1-4 '
alias rm='rm -iv '
alias statsort='stat -f "%Sm %N" -t "%Y-%m-%dT%H:%M:%S" * | sort '
alias t="tree -a -I '.git|.DS_Store|.ipynb_checkpoints|.localized|.vscode|__pycache__|desktop.ini|\\\$RECYCLE.BIN' --filesfirst "
alias up='cd ..'
alias upper="tr '[a-z]' '[A-Z]' "
alias wtr='curl wttr.in '

#alias solc5='/opt/homebrew/Cellar/solidity@5/0.5.17/bin/solc '
#alias st='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 - '



source ~/.zshrc.al
source ~/.zshrc.bc

cheat () {
  if [ $# -ne 1 ]
  then
    echo -n "Usage: cheat <command name>"
  else
    curl https://cheat.sh/$1
  fi
}

trash () {
  if [ $# -ne 1 ]
  then
    echo -n "Try again with an argument."
  else
    mv $1 ~/.Trash
  fi
}





fac () {
  (echo 1; seq $1;) | paste -sd\* - | bc;
}


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/df/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/df/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/df/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/df/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
