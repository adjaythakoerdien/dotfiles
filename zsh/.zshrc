export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git azure macos nvm systemd thefuck tmux urltools)
source $ZSH/oh-my-zsh.sh
source .config/zsh_scripts/.tmux

# Clear screen
alias c="clear;clear;"

# Neovim
alias v.="nvim ."
alias nv="nvim"
alias nvzsh="nvim ~/.zshrc"
alias sozsh="source ~/.zshrc"
alias zshv="nvim ~/.zshrc"
alias obs="cd ~/personal/DeeezNotes/DeeezNotes; nvim ."
alias obsin="cd ~/personal/DeeezNotes/DeeezNotes/in; nvim .; %"

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
