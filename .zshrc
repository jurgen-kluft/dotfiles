# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ZSH options combined with oh-my-zsh configs
# See https://github.com/robbyrussell/oh-my-zsh/blob/master/templates/zshrc.zsh-template

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# Some I like (but I did not try many): robbyrussell, random, clean, agnoster
# ZSH_THEME="spaceship"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Default plugins can be found in ~/.oh-my-zsh/plugins/
# Custom plugins can be added to $ZSH_CUSTOM/plugins/
# Homebrew plugins needs to be loaded differently, as it uses another place for storage
plugins=(git zsh-autosuggestions colored-man-pages colorize brew web-search)

# some more options you can fiddle around with:
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"

#
# History control
#
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt SHARE_HISTORY
setopt appendhistory

# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# PATH
# append
# path+=('~/.emacs.d/bin')
# or prepend
# path=('/home/david/pear/bin' $path)
# export to sub-processes (make it inherited by child processes)
# export PATH

# I know that oh-my-zsh doesn't like that, but I am not going to keep all settings in multiple files.
# For now lets live with that solution, maybe I am going to switch to .zshrc completely, but until then just make
# sure that ~/bash_profile is compatible with zsh
source ~/.bash_profile

# load the oh-my-zsh environment
source $ZSH/oh-my-zsh.sh

eval "$(jump shell zsh)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

source $HOME/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
