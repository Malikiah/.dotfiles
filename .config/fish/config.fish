if status is-interactive
    
    export TERM="alacritty"
    export PATH="$HOME/.ghcup/bin:$HOME/Applications:$HOME/.local/bin:$PATH"
    alias ls='ls -lah --color=auto'
    alias ghc='ghc-9.2'
	alias vim="nvim"
    # Commands to run in interactive sessions can go here
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/default/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

