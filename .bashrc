#
# ~/.bashrc
#

# If not running interactively, don't do anything
export PATH="$HOME/.ghcup/bin:$HOME/Applications:$HOME/.local/bin:$PATH"
[[ $- != *i* ]] && return

alias ls='ls -lah --color=auto'
alias ghc='ghc-9.2'
PS1='[\u@\h \W]\$ '




# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/default/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/default/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/default/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/default/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

[ -f "/home/default/.ghcup/env" ] && source "/home/default/.ghcup/env" # ghcup-env
. "$HOME/.cargo/env"

if [[ "$(tty)" = "/dev/tty1" ]]; then
    pgrep leftwm || startx
fi
fish
