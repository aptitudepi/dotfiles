source ~/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
# Load the theme.
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source $(dirname $(gem which colorls))/tab_complete.sh
eval "$(zoxide init zsh)"

alias ls='colorls -A --sd'
alias cp='/usr/local/bin/cp -gR'
alias mv='/usr/local/bin/mv -g'
alias tmpmail='/usr/local/bin/tmpmail'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export PATH=$PATH:~/.local/bin

export BASH_IT_THEME="powerline-plain"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

source /var/lib/gems/2.7.0/gems/colorls-1.4.4/lib/tab_complete.sh
export PATH=$PATH:/usr/bin

export BASH_IT_THEME="powerline-plain"
source /var/lib/gems/2.7.0/gems/colorls-1.4.4/lib/tab_complete.sh
alias ls='colorls -lA --sd'
alias cp=/usr/local/bin/cp -g
alias mv=/usr/local/bin/mv -g
