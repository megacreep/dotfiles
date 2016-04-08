#
# only init if installed.
fasd_cache="$HOME/.fasd-init-bash"
if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
  eval "$(fasd --init zsh-hook zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install)" >| "$fasd_cache"
fi
source "$fasd_cache"
unset fasd_cache


# jump to recently used items
alias fs='fasd -si' # show / search / select
alias fd='fasd -d' # directory
alias ff='fasd -f' # file
alias z='fasd_cd -d' # cd, same functionality as j in autojump
alias v='ff -e vim' # quick opening files with vim

