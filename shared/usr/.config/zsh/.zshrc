stty stop undef

autoload -U colors && colors
autoload -U compinit
autoload -Uz vcs_info

setopt autocd
setopt prompt_subst
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS

zmodload zsh/complist


zstyle ':completion:*' menu select
zstyle ":completion:*:descriptions" format "%B%d%b"

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' actionformats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats '%F{5}%F{2}%b%F{5}%f '

_comp_options+=(globdots)
compinit

HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="$XDG_CONFIG_HOME/zsh/.zhist"
export HISTTIMEFORMAT="[%F %T] "

[ ! -d "${XDG_RUNTIME_DIR:/tmp/user-$UID}" ] && mkdir -p "${XDG_RUNTIME_DIR:/tmp/user-$UID}"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/directoryrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/directoryrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/filerc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/filerc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/plugins/zsh-history-substring-search.zsh" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/plugins/zsh-history-substring-search.zsh" 

vcs_info_wrapper() {
  vcs_info
  [ -n "$vcs_info_msg_0_" ] && echo " %{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}" | sed 's/.$//'
}

PS1=$'%{$fg[red]%}%n%{$reset_color%}%{$fg[white]%}@%{$reset_color%}%{$fg[green]%}%m%{$reset_color%}%{$fg[blue]%}:/%18<..<%~%<<%{$reset_color%}$(vcs_info_wrapper) '
#PS1="%B%{$fg[red]%}[%{$fg[red]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
#RPROMPT=""
