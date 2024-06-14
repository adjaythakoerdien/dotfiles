# If you come from bsh you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git azure macos nvm systemd thefuck tmux urltools)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

# Clear screen
alias c="clear;clear;"

# Neovim
alias v.="nvim ."
alias nv="nvim"
alias nvzsh="nvim ~/.zshrc"
alias sozsh="source ~/.zshrc"
alias zshv="nvim ~/.zshrc"
alias obv="cd ~/personal/DeeezNotes/DeeezNotes; nvim ."
alias obvn="cd ~/personal/DeeezNotes/DeeezNotes/in; nvim .; %"

# Change direcory
alias cconf="cd ~/.config"
alias cdconf="cd ~/.config/nvim"
alias nvconf="cd ~/.config/nvim; nvim ."
alias confv="cd ~/.config/nvim; nvim ."
alias confa="nvim ~/.config/alacritty/alacritty.toml"
alias home="cd ~; lsa"
alias downloads="cd ~/Downloads; ls -ltr"
alias downl="cd ~/Downloads; ls -ltr"
alias desk="cd ~/Desktop; lsa"
alias docs="cd ~/Documents; lsa"
alias personal="cd ~/personal; lsa"
alias dot="cd ~/dotfiles/"
alias conf="cd ~/.config/"

# Tmux
tx() {
	tmux
}
txn() {
	tmux new -s $1
}
txa() {
	tmux attach -t $1
} 
txk() {
	tmux kill-session -t $1
} 
alias txls="tmux ls"

# Tmuxifier
tmf() {
	tmuxifier $1 $2
}

cht() {
	~/.config/scripts/./tmux-cht.sh
}

# BVCM
alias bvcm="cd ~/Documents/werk/BVCM; lsa"
alias bvdata="cd ~/Documents/werk/BVCM/data; lsa"

function bvdocs() {
	
	# SFTP
	if [[ "$1" == "sftp" ]]; 
	then
		cd "/Users/adjaythakoerdien/Documents/werk/BVCM/docs/scripts_sftp_useit"
		"ls -ltr"
		echo "Now @ /Users/adjaythakoerdien/Documents/werk/BVCM/docs/scripts_sftp_useit"
	fi

	# billing
	if [[ "$1" == "billing" ]]; 
	then
		cd "/Users/adjaythakoerdien/Documents/werk/BVCM/docs/$1"
		"ls -ltr"
		echo "Now @ /Users/adjaythakoerdien/Documents/werk/BVCM/docs/$1"
	fi

	# aanlaveringen
	if [[ "$1" == "aanleveringen" ]]; 
	then
		cd "/Users/adjaythakoerdien/Documents/werk/BVCM/docs/aanleveringen"
		"ls -ltr"
		echo "Now @ /Users/adjaythakoerdien/Documents/werk/BVCM/docs/$1"
	fi
	
	# empty
	if [[ "$1" == "" ]]; 
	then
		cd "/Users/adjaythakoerdien/Documents/werk/BVCM/docs"
		"lsa"
		echo "Now @ /Users/adjaythakoerdien/Documents/werk/BVCM/docs"
	fi
}



# BVCM Git
alias bvg="cd ~/Documents/werk/BVCM/git; lsa"
alias bvgai="cd ~/Documents/werk/BVCM/git/bvcm-ai; lsa"
alias bvgbo="cd ~/Documents/werk/BVCM/git/bvcm-backoffice-app; lsa"
alias bvghs="nvim ~/Documents/werk/BVCM/git/bvcm-hubspot-webhook;"
alias bvgaif="nvim ~/Documents/werk/BVCM/git/bvcm-ai/frontend;"
alias bvgaib="nvim ~/Documents/werk/BVCM/git/bvcm-ai/backend;"
alias bvgsn="nvim ~/Documents/werk/BVCM/git/bvcm-synapse-backend;"
alias bvgwk="nvim ~/Documents/werk/BVCM/git/bvcm-wiki/wiki"
alias bvgff="cd ~/Documents/werk/BVCM/git/bvcm-findflow; lsa;"
alias bvgdw="cd ~/Documents/werk/BVCM/git/bvcm-daywize; lsa;"

alias run-bvbo="source venv24/bin/activate;cd BVCM_BO_TEST;python manage.py runserver;"

# adjay.dev
alias werk="cd ~/Documents/werk; lsa"
alias werkgit="cd ~/Documents/werk/git; lsa"
alias werkg="cd ~/Documents/werk/git; lsa"
alias werkheiloo="cd ~/Documents/werk/git/heiloo-vitaal; lsa"
alias werkavx="cd ~/Documents/werk/advintex\ inspectie/git/advintex-inspectie;"
alias homebase="cd ~/Projects/homebase/homebase-svelte;tmux new -s base;"
alias avx="cd ~/Documents/werk/advintex\ inspectie/git/advintex-inspectie;"
alias avxher="cd ~/Documents/werk/advintex\ inspectie/git/advintex-herinspectie;"

# PIP
alias pir="pip install -r requirements.txt"
alias pfr="pip freeze > requirements.txt"
alias pl="pip list"
alias pi="pip install"
alias activate-venv="source venv/bin/activate"
alias venv="source venv/bin/activate"

# fzf
alias fzfv="cd ~;fzf --print0 | xargs -0 -o nvim"
alias fzfo="cd ~;fzf --print0 | xargs -0 -o open"
alias dzdv="fzf --print0 | xargs -0 -o nvim"
alias dzdo="fzf --print0 | xargs -0 -o open"

# macOS
alias lsaa="ls -a;"
alias cl="clear"

# Collect Online Proxy
alias run-coproxy="~/Documents/werk/BVCM/docs/proxy/./cloud-sql-proxy collectonline-symfony-4:europe-west1:collectonline-mysql \
--port=3308 \
--credentials-file=/Users/adjaythakoerdien/Documents/werk/BVCM/docs/proxy/collectonline-symfony-4-8a0b846088b3.json"
alias run-coproxy-build="~/Documents/werk/BVCM/docs/proxy/./cloud-sql-proxy collectonline-symfony-4:europe-west1:collectonline-build \
--port=3308 \
--credentials-file=/Users/adjaythakoerdien/Documents/werk/BVCM/docs/proxy/collectonline-symfony-4-8a0b846088b3.json"

# Load Angular CLI autocompletion.
source <(ng completion script)

# The fuck
eval $(thefuck --alias)


# MODULAR & MOJO
export MODULAR_HOME="$HOME/.modular"
export PATH="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# FZF Config
function vzv() {
fzf | xargs nvim
}

# New Obsidian note
function on() {
if [ -z "$1" ]; then
  echo "Error: A file name must be set, e.g. on \"the wonderful thing about tiggers\"."
  exit 1
fi

file_name=$(echo "$1" | tr ' ' '-')
formatted_file_name=${file_name}_$(date "+%Y-%m-%d").md
cd "/Users/adjaythakoerdien/personal/DeeezNotes/DeeezNotes" || exit
touch "0-inbox/${formatted_file_name}"
nvim "0-inbox/${formatted_file_name}"
}


# Starship
eval "$(starship init zsh)"

# Tmuxifier
export PATH="$HOME/.config/.tmuxifier/bin:$PATH"
eval "$(tmuxifier init -)"

# Created by `pipx` on 2024-04-05 14:42:57
export PATH="$PATH:/Users/adjaythakoerdien/.local/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/adjaythakoerdien/Projects/dev/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/adjaythakoerdien/Projects/dev/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/adjaythakoerdien/Projects/dev/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/adjaythakoerdien/Projects/dev/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

export NVM_DIR="/opt/homebrew/opt/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set default $EDITOR
export EDITOR=nvim
export VISUAL="$EDITOR"
