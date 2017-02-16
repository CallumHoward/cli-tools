# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode history-substring-search virtualenv zsh-syntax-highlighting history-search-multi-word docker cabal aws meteor npm pip)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/opt/local/bin:/opt/local/sbin:/Library/Frameworks/Python.framework/Versions/3.4/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:/opt/X11/bin"
# export MANPATH="/usr/local/man:$MANPATH"
PATH=$PATH:/Library/TeX/texbin
PATH=/usr/local/bin:$PATH
PATH=$PATH:~/.local/bin
#PATH=$PATH:/usr/local/share/pypy
PATH=$(brew --prefix josegonzalez/php/php55)/bin:$PATH
PATH=/usr/local/sbin:$PATH
PATH=$PATH:~/.cabal/bin
PATH=$PATH:/usr/local/opt/llvm/bin
PATH=$PATH:$GOPATH/bin

export GOPATH=$HOME/golang

export RUNSWIFT_CHECKOUT_DIR="/Users/callumhoward/rUNSWift"
export PATH="$RUNSWIFT_CHECKOUT_DIR/bin:$PATH"

export ASAN_SYMBOLIZER_PATH="/usr/local/opt/llvm/bin/llvm-symbolizer"

export HOMEBREW_NO_AUTO_UPDATE=1

# Arcanist
PATH=$PATH:~/phabricator/arcanist/bin
source ~/phabricator/arcanist/resources/shell/bash-completion

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi


# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# TMUX
#if which tmux >/dev/null 2>&1; then
#    #if not inside a tmux session, and if no session is started, start a new session
#    test -z "$TMUX" && (tmux attach || tmux new-session -s default)
#fi


# Setup zsh-autosuggestions
source ~/.zsh-autosuggestions/autosuggestions.zsh

# Enable autosuggestions automatically
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

# auto-fu.zsh
#function zle-line-init () {
#    auto-fu-init
#}
#zle -N zle-line-init
#zstyle ':completion:*' completer _oldlist _complete

HISTSIZE=999999999
SAVEHIST=$HISTSIZE

# gitsome completion
autoload bashcompinit
bashcompinit
source ~/.gitsome/gh_complete.sh

# use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
bindkey '^T' autosuggest-toggle

# Vi style keybindings
bindkey -v
bindkey -M viins 'kj' vi-cmd-mode

zmodload zsh/terminfo
#bindkey '^[[A'      history-substring-search-up
#bindkey '^[[B'      history-substring-search-down

# VI MODE KEYBINDINGS (ins mode)
bindkey -M viins '^a'       beginning-of-line
bindkey -M viins '^e'       end-of-line
bindkey -M viins '^k'       kill-line
#bindkey -M viins '^r'       history-incremental-pattern-search-backward
bindkey -M viins '^s'       history-incremental-pattern-search-forward
bindkey -M viins '^p'       history-substring-search-up #up-line-or-history
bindkey -M viins '^n'       history-substring-search-down #down-line-or-history
bindkey -M viins '^f'       forward-char
bindkey -M viins '^b'       backward-char
bindkey -M viins '^y'       yank
bindkey -M viins '^w'       backward-kill-word
bindkey -M viins '^u'       backward-kill-line
bindkey -M viins '^d'       delete-char
bindkey -M viins '^h'       backward-delete-char
bindkey -M viins '^?'       backward-delete-char
bindkey -M viins '^_'       undo
bindkey -M viins '^x^r'     redisplay
bindkey -M viins '\eOH'     beginning-of-line # Home
bindkey -M viins '\eOF'     end-of-line       # End
bindkey -M viins '\e[2~'    overwrite-mode    # Insert
bindkey -M viins '\ef'      forward-word      # Alt-f
bindkey -M viins '\eb'      backward-word     # Alt-b
bindkey -M viins '\ed'      kill-word         # Alt-d

# VI MODE KEYBINDINGS (cmd mode)
bindkey -M vicmd 'k'        history-substring-search-up
bindkey -M vicmd 'j'        history-substring-search-down
bindkey -M vicmd '^a'       beginning-of-line
bindkey -M vicmd '^e'       end-of-line
bindkey -M vicmd '^k'       kill-line
bindkey -M vicmd '^r'       history-incremental-pattern-search-backward
bindkey -M vicmd '^s'       history-incremental-pattern-search-forward
bindkey -M viins '^p'       history-substring-search-up #up-line-or-history
bindkey -M viins '^n'       history-substring-search-down #down-line-or-history
bindkey -M viins '^f'       forward-char
bindkey -M viins '^b'       backward-char
bindkey -M vicmd '^y'       yank
bindkey -M vicmd '^w'       backward-kill-word
bindkey -M vicmd '^u'       backward-kill-line
bindkey -M viins '^d'       delete-char
bindkey -M vicmd '/'        vi-history-search-forward
bindkey -M vicmd '?'        vi-history-search-backward
bindkey -M vicmd '^_'       undo
bindkey -M vicmd '\ef'      forward-word                      # Alt-f
bindkey -M vicmd '\eb'      backward-word                     # Alt-b
bindkey -M vicmd '\ed'      kill-word                         # Alt-d
bindkey -M vicmd '\e[5~'    history-beginning-search-backward # PageUp
bindkey -M vicmd '\e[6~'    history-beginning-search-forward  #

# history-substring-search plugin configuration
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='fg=white,bold'

# zsh-syntax-highlighting plugin configuration
ZSH_HIGHLIGHT_STYLES[command]='bold'
ZSH_HIGHLIGHT_STYLES[alias]='bold'
ZSH_HIGHLIGHT_STYLES[builtin]='bold'
ZSH_HIGHLIGHT_STYLES[function]='bold'
ZSH_HIGHLIGHT_STYLES[precommand]='bold'
ZSH_HIGHLIGHT_STYLES[path_approx]='none'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=14,bold'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=red'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=red'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=white'

# history-search-multi-word configuration
typeset -gA HSMW_HIGHLIGHT_STYLES
HSMW_HIGHLIGHT_STYLES[path]="fg=white,underline"
HSMW_HIGHLIGHT_STYLES[command]='bold'
HSMW_HIGHLIGHT_STYLES[alias]='bold'
HSMW_HIGHLIGHT_STYLES[builtin]='bold'
HSMW_HIGHLIGHT_STYLES[function]='bold'
HSMW_HIGHLIGHT_STYLES[precommand]='bold'
HSMW_HIGHLIGHT_STYLES[path_approx]='none'
HSMW_HIGHLIGHT_STYLES[reserved-word]='fg=14'
HSMW_HIGHLIGHT_STYLES[single-quoted-argument]='fg=red'
HSMW_HIGHLIGHT_STYLES[double-quoted-argument]='fg=red'
HSMW_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=white'
HSMW_HIGHLIGHT_STYLES[comment]='fg=white'
zstyle ":history-search-multi-word" highlight-color "fg=yellow,underline,bg=8"   # Color in which to highlight matched, searched text
zstyle ":plugin:history-search-multi-word" active "none"   # Effect on active history entry. Try: standout, bold, bg=blue

mkcd() { mkdir -p "$@" && cd "$@"; }

ranger-cd() {
    tempfile=$(mktemp /tmp/${tempfoo}.XXXXXX)
    ranger --choosedir="$tempfile" "${@:-$(pwd)}" < $TTY
    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
        cd -- "$(cat "$tempfile")"
    fi
    rm -f -- "$tempfile"
}

function auto-ls-after-cd() {
  emulate -L zsh
  # Only in response to a user-initiated `cd`, not indirectly (eg. via another function).
  if [ "$ZSH_EVAL_CONTEXT" = "toplevel:shfunc" ]; then
      # Only if there are less then 50 items in the directory
      if (( `ls | wc -l` < 50 )); then ~/.cargo/bin/exa --group-directories-first -x; fi
  fi
}
add-zsh-hook chpwd auto-ls-after-cd

edit-fzf() {
    $EDITOR `sk --ansi --reverse -i -m -c 'rg -i --color=always "{}"' | cut -f1 -d':'`
}

export FZF_DEFAULT_COMMAND='
  (git ls-tree -r --name-only HEAD ||
   find . -path "*/\.*" -prune -o -type f -print -o -type l -print |
      sed s/^..//) 2> /dev/null'

# cf - fuzzy cd
cf() {
    if [ "$1" != "" ]; then cd $1; fi;
    local dir=`find . -type d | rg -v "/\.|\.dSYM|\.xcodeproj|build|bin|ctc" | sk --reverse`
    if [ $? -eq 0 ]; then cd $dir; fi;
}

Terminal() { tmux attach 2> /dev/null || tmux new }

alias title="printf '\033]0;%s\007'"
#alias Terminal="tmux attach 2> /dev/null || tmux new"
alias e="$EDITOR"
alias c="cf"
alias ef="edit-fzf"
alias ranger="ranger-cd"
alias ra="ranger"
alias ip="ipython"
alias pti="ptipython"
alias bpython2="python -m bpython.cli"
alias bp="bpython2"
#alias clang-tidy="/usr/local/opt/llvm/bin/clang-tidy"
alias jsc="/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc"
alias vim="mvim -v"
alias vv="vim -u NONE"
alias nview="nvim -R"
alias htop="sudo htop"
alias goto=". goto"
alias :q="exit"
alias su="sudo su"
alias s="git sb"
alias s.="s ."
alias gdd="git difftool"
alias m="make"
alias mc="make clean"
alias vimcse="vim scp://callumh@cse.unsw.edu.au//import/ravel/2/callumh/"
alias open.="open ."
alias o="open ."
alias cd.="cd ."
alias cd..="cd .."
alias cd...="cd ..."
alias cd....="cd ...."
alias cd.....="cd ....."
alias mv="nocorrect mv"
alias cp="nocorrect cp"
alias mkdir="nocorrect mkdir"
alias git="nocorrect git"
alias mc="mkcd"
alias git="hub"
#alias cd="nocorrect cd"
alias cal="gcal"
alias ls="~/.cargo/bin/exa"

alias rg="rg -S \
    --colors 'path:fg:green' \
    --colors 'path:style:nobold' \
    --colors 'line:fg:yellow' \
    --colors 'line:style:nobold' \
    --colors 'match:fg:black' \
    --colors 'match:bg:yellow' \
    --colors 'match:style:nobold'"
# \
#    -g '!Library/' \
#    -g '!Downloads/' \
#    -g '!Pictures/' \
#    -g '!Music/'"

alias skg="sk --ansi -i -c 'ag --color \"{}\"'"

PERL_MB_OPT="--install_base \"/Users/howard/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/howard/perl5"; export PERL_MM_OPT;

CPLUS_INCLUDE_PATH="/usr/local/Cellar/boost/1.62.0/include"

# OPAM configuration
. /Users/callumhoward/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Robocup stuff
export RUNSWIFT_CHECKOUT_DIR="/Users/callumhoward/rUNSWift"
export PATH="$RUNSWIFT_CHECKOUT_DIR/bin:$PATH"
export CTC_DIR="/Users/callumhoward/rUNSWift/ctc/ctc-mac64-atom-2.1.3.3"
