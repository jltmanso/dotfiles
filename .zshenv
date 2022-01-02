typeset -U PATH path

# XDG paths
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}

# Disable files
export LESSHISTFILE=-

# Redefine config paths
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export CONAN_USER_HOME="$XDG_CONFIG_HOME"/conan
export TEXMFCONFIG="$XDG_CONFIG_HOME"/texlive/texmf-config
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh

# Redefine cache paths
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export TEXMFVAR="$XDG_CACHE_HOME"/texlive/texmf-var

# Redefine data paths
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export HISTFILE="$XDG_DATA_HOME"/zsh/history
export TEXMFHOME="$XDG_DATA_HOME"/texmf
