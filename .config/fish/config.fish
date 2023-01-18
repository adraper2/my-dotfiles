set fish_greeting ""
set VIRTUAL_ENV_DISABLE_PROMPT "1"
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval $HOME/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

set -gx EDITOR nvim
alias vim "nvim"
alias vi '/opt/homebrew/bin/vim'
alias g git

set -gx PATH /opt/homebrew/sbin $PATH
set -gx PATH /opt/homebrew/bin $PATH
set -gx PATH $HOME/.pyenv/shims $PATH

# Set settings for https://github.com/franciscolourenco/done
set -U __done_min_cmd_duration 10000
set -U __done_notification_urgency_level low

# source ~/.bash_profile

# MY BASHRC ALIASES
alias ducks 'du -cks * | sort -rn | head -15'
alias get-ip 'ipconfig getifaddr en0'

# some more ls aliases
if type -q exa
    alias ll "exa -l -g --icons"
    alias lla "ll -a"
    alias lg "exa --long --git -a --git-ignore"
    alias tree "exa --tree --level 2"
end

alias make-key='openssl rand -hex 30'

# MIKELAs GREP COMMANDS - DOPE!
# grepr () { grep -r "$*" --exclude-dir='__pycache__' .; }
# greprpy () { grep -rn --exclude-dir='.venv' --include="*.py" "$*"; }
# greprrb () { grep -rn --include="*.rb" "$*"; }
# greprerb () { grep -rn --include="*.erb" "$*"; }
# sedr () { find . -type d -path '*/\.*' -prune -o -not -name '.*' -type f -print0 | xargs -0 sed -i $*; }
# END OF GREP COMMANDS

# CONDA TOOLS
function cact
    conda activate $argv
end
alias deak 'conda deactivate'
set -gx PYTHONBREAKPOINT ipdb.set_trace
set -x RELEASE_BRANCH_NAME main # this will be master for orig branch

# PRIVATE COMMANDS
if status --is-interactive;
    source $HOME/.config/fish/private.fish
end
