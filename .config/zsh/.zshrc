autoload -U colors && colors

PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

setopt autocd
stty stop undef

HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$XDG_CONFIG_HOME/zsh/history"

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/directoryrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/directoryrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/filerc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/filerc"

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
