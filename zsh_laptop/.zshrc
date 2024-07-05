#   ------
#%% prompt
#   ------
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

# Set up the prompt
# autoload -U colors && colors
# #PROMPT='%F{green}%M %(?.%F{green}√.%F{red}?%?)%f %B%F{cyan}%1~%f%b %# '
# PROMPT='%F{green}%M %(?.%F{green}√.%F{red}?%?)%f %B%F{cyan}%1~%f%b  ' #%F{green}>%f '


# PATH 
export PATH=/usr/local/bin/:bin/:$PATH
# cisco
export PATH=/opt/cisco/anyconnect/bin/:$PATH 
# nrgljubljana
export PATH=$HOME/nrg/bin:$PATH
# julia 
export PATH=/home/aitor/Kodeak/julia-1.10.0/bin:$PATH
#export JULIA_NUM_THREADS=8
# node
export PATH=/home/aitor/Kodeak/node-v16.13.0-linux-arm64/bin:$PATH
# pyenv 
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

autoload conda deactivate

#alias python3="/usr/bin/python3.8"

# vi mode
bindkey -v

# autosuggestion completion
bindkey '^ ' autosuggest-accept

#autoload -Uz promptinit
#promptinit
#prompt adam1

setopt histignorealldups sharehistory

# share history throughout sessions
setopt share_history append_history

# enable autocorrection
#setopt correct correct_all

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

alias ls='ls --color=auto'
alias v='nvim'
alias sv='vim -u ~/.SpaceVim/vimrc'

# pointgroupnrg
alias juliapgnrg='julia -J /home/aitor/Bulegoa/PointGroupNRG_Package/PointGroupNRG/PointGroupNRGScripted.so'
alias julia_itensors="julia --sysimage /home/aitor/.julia/sysimages/sys_itensors.so"

## >>> conda initialize >>>
## !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/opt/intel/intelpython3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/opt/intel/intelpython3/etc/profile.d/conda.sh" ]; then
#        . "/opt/intel/intelpython3/etc/profile.d/conda.sh"
#    else
#        export PATH="/opt/intel/intelpython3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
## <<< conda initialize <<<

[[ -s /home/aitor/.autojump/etc/profile.d/autojump.sh ]] && source /home/aitor/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
#source /home/aitor/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#


# fzf fuzzy-finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#export FZF_DEFAULT_COMMAND='find -L'
export FZF_DEFAULT_OPTS="
--layout=reverse
--info=inline
--height=80%
--multi
--preview-window=:hidden
--preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
--color='hl:148,hl+:154,pointer:032,marker:010,bg+:237,gutter:008'
--prompt='∼ ' --pointer='▶' --marker='✓'
--bind '?:toggle-preview'
--bind 'ctrl-a:select-all'
--bind 'ctrl-y:execute-silent(echo {+} | pbcopy)'
--bind 'ctrl-e:execute(echo {+} | xargs -o vim)'
--bind 'ctrl-v:execute(code {+})'
"
