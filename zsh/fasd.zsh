#
# only init if installed.
fasd_cache="$HOME/.fasd-init-bash"
if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
  eval "$(fasd --init posix-alias zsh-hook zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install)" >| "$fasd_cache"
fi
source "$fasd_cache"
unset fasd_cache


# jump to recently used items
alias fa='fasd -a' # any
alias fs='fasd -si' # show / search / select
alias fd='fasd -d' # directory
alias ff='fasd -f' # file
alias fz='fasd_cd -d' # cd, same functionality as j in autojump
alias fzz='fasd_cd -d -i' # interactive directory jump
