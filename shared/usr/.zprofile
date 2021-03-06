#!/bin/zsh
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export READER="zathura"

#export PICTURES="$HOME/personal/pictures"
#export VIDEOS="$HOME/personal/videos"
#export DOCUMENTS="$HOME/personal/documents"
#export DOWNLOADS="$HOME/personal/downloads"
#export WALLPAPERS="$HOME/.local/share/wallpapers"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_LIB_HOME="$HOME/.local/lib"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_RUNTIME_DIR="/tmp/user-$UID"
export PATH="$XDG_BIN_HOME:$PATH" # add XDG_BIN_HOME to PATH

# XDG compliancy fixes
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export DBUS_SESSION_BUS_ADDRESS=unix:path="$XDG_RUNTIME_DIR/bus"
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export GOPATH="$XDG_DATA_HOME/go"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/npmrc"
export GNUPGHOME="${XDG_CONFIG_HOME}/gnupg"
export GEM_PATH="$HOME/.local/bin"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export HOMERC="$XDG_CONFIG_HOME/htop/htoprc"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export IPYTHONDIR="$XDG_CONFIG_HOME/ipython"
export LESSHISTFILE="$XDG_DATA_HOME/less/history"
export MYSQL_HISTFILE="$XDG_DATA_HOME/mysql/history"
export npm_config_userconfig="$XDG_CONFIG_HOME/npm/npmrc"
export PIP_CONFIG_FILE="$XDG_CONFIG_HOME/pip/pip.conf"
export PIP_LOG_FILE="$XDG_DATA_HOME/pip/log"
export PSQLRC="$XDG_CONFIG_HOME/psql/psqlrc"
export PSQL_HISTORY="$XDG_DATA_HOME/psql/history"
export PYLINTHOME="$XDG_DATA_HOME/pylint"
export PYLINTRC="$XDG_CONFIG_HOME/pylint/pylintrc"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
export TERMINFO="$XDG_CONFIG_HOME/terminfo"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
