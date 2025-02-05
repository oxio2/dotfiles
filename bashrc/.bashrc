# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Add user-specific directories to PATH if not already included
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:$HOME/bin2:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$HOME/bin2:$PATH"
fi

export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

alias ll="ls -l --color"
alias lla="ls -la --color"
alias la="ls -a --color"
alias l="ls --color"

alias vim="nvim"
