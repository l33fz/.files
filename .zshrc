# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=5000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lucas/.zshrc'

autoload -Uz compinit 
compinit
# End of lines added by compinstall
export PATH=/home/lucas/bin/:$PATH
##INTEGRATED PROMPT
##PROMPT='
##%F{14}.-%F{7}(%F{11}%~%F{7})
##%F{14}`--%F{15}%B%#%b'
##RPROMPT='%F{8}[%F{10}%n%F{8}@%D{%H:%M:%S}]'

#ALIASES
alias installed-packages-world='cat /var/lib/portage/world'
alias installed-packages='qlist -IRv'
alias installed-packages-vim='qlist -IRv | vim -'
alias shutdown='doas shutdown -P now'
alias reboot='doas reboot'
alias su='doas su'
alias notes='vim $HOME/notes'
alias dmci='doas make clean install'
alias syspac-upgrade='doas emerge --ask --verbose --update --deep --changed-use @world'
zle_highlight=(default:bold)
##STARSHIP PROMPT
eval "$(starship init zsh)"

##SYNTAX HIGHLIGHTING
source /home/lucas/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
