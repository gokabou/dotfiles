autoload -U compinit promptinit colors
compinit
promptinit
colors

# use emacs keybind
bindkey -e

# enable zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting.zsh
# customize zsh-syntax-highlighting color
ZSH_HIGHLIGHT_STYLES[builtin]=fg=white,bold     # color of builtin command
ZSH_HIGHLIGHT_STYLES[precommand]=fg=white,bold,underline
ZSH_HIGHLIGHT_STYLES[globbing]=fg=cyan          # color of regular expression (glob)

# prompt theme
# prompt adam2
PROMPT="%{$fg_bold[white]%}ζ*'ヮ')ζ< %{$fg_bold[cyan]%}%n%{$fg_no_bold[cyan]%}@%{$fg_bold[cyan]%}%{$fg_bold[white]%}[%{$fg_bold[cyan]%}%~%{$fg_bold[white]%}]%{$fg_bold[cyan]%} %{$fg_bold[white]%}
%# "
#RPROMPT="[%{$fg_no_bold[cyan]%}%?]"

# completion with arrow keys
zstyle ':completion:*' menu select

# ignore the duplicated history
setopt HIST_IGNORE_DUPS

# set word chars
export WORDCHARS="*?_.[]~-=&;!#$%^(){}<>" 

# cd then ls
cd () {
    builtin cd "$@" && ls
}

# Maven path
MAVEN_HOME="/opt/apache-maven-3.3.9"

# PATH environment variable
PATH="$PATH:/Users/gkb/bin:/Users/gkb/.cabal/bin:$MAVEN_HOME/bin"

# aliases
alias bc='bc -l'
