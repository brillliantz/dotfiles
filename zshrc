ZSH_RC_PATH="/home/brz/.rcs/zsh/"
rc1="${ZSH_RC_PATH}sour.zsh"


source "${ZSH_RC_PATH}before_antigen.zsh"
source "${ZSH_RC_PATH}install_antigen.zsh"
source "${ZSH_RC_PATH}antigen_bundles.zsh"
source "${ZSH_RC_PATH}antigen_theme.zsh"


# check login shell
if [[ -o login ]]; then
	[ -f "$HOME/.local/etc/login.sh" ] && source "$HOME/.local/etc/login.sh"
	[ -f "$HOME/.local/etc/login.zsh" ] && source "$HOME/.local/etc/login.zsh"
fi


source "${ZSH_RC_PATH}highlights.zsh"


antigen apply


# setup for deer
autoload -U deer
zle -N deer


source "${ZSH_RC_PATH}keymaps.zsh"
source "${ZSH_RC_PATH}alias.zsh"


# options
unsetopt correct_all

setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY # Don't execute immediately upon history expansion.


# source function.sh if it exists
[ -f "$HOME/.local/etc/function.sh" ] && . "$HOME/.local/etc/function.sh"


# ignore complition
zstyle ':completion:*:complete:-command-:*:*' ignored-patterns '*.pdf|*.exe|*.dll'
zstyle ':completion:*:*sh:*:' tag-order files


# print useful information after login
source "${ZSH_RC_PATH}useful_info.zsh"
