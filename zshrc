# Load zsh's git/vcs info module
autoload -Uz vcs_info
precmd() { vcs_info }

# Format: shows " (branchname)" when inside a git repo, empty otherwise
zstyle ':vcs_info:git:*' formats ' (%b)'

# Required to evaluate ${vcs_info_msg_0_} on every prompt
setopt PROMPT_SUBST

# The prompt itself
PROMPT='%F{cyan}%n%f %F{yellow}%2~%f%F{green}${vcs_info_msg_0_}%f %% '

eval "$(mise activate zsh)"
