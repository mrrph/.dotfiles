# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# LOAD ZINIT
source ~/.zinit/bin/zinit.zsh

# Load the plugins that are useful.
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting
zinit load zdharma/history-search-multi-word
zinit light zsh-users/zsh-history-substring-search
zinit load supercrabtree/k
zinit load softmoth/zsh-vim-mode
# zinit light wting/autojump

# This is the pure theme, mentioned by the zinit Github page
zinit ice pick"async.zsh" src"pure.zsh"
zinit light sindresorhus/pure

# These are how you load Prezto(PRT) and Oh My Zsh(OMZ) modules
zinit snippet PZT::modules/homebrew/init.zsh
# zinit snippet PZT::modules/ssh/init.zsh

# zinit wait lucid light-mode for \
#   atinit"zicompinit; zicdreplay" \
#       zdharma/fast-syntax-highlighting \
#   atload"_zsh_autosuggest_start" \
#       zsh-users/zsh-autosuggestions \
#   blockf atpull'zinit creinstall -q .' \
#       zsh-users/zsh-completions

# The line the autojump homebrew thing said to use which I guess works
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh
# vim mode set
# bindkey -v

export PATH="$HOME/.emacs.d/bin/:$PATH"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
