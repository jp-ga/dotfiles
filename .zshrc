# Colored Directories
export CLICOLOR=1
export LSCOLORS=ExGxCxDxCxegedabagacad

# Starship
eval "$(starship init zsh)" 

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jpga/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jpga/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/Users/jpga/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jpga/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/Users/jpga/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/Users/jpga/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

