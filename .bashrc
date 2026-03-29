#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

if [[ -d "$HOME/.nvm" ]]; then
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

if [[ -d "/usr/local/go/bin" ]]; then
	PATH="$PATH:/usr/local/go/bin"
fi

if [[ -d "$HOME/.local/bin/" ]]; then
	PATH="$PATH:$HOME/.local/bin/"
fi

if [[ -d "$HOME/.dotnet" ]]; then
	export DOTNET_ROOT=$HOME/.dotnet
	PATH="$PATH:$HOME/.dotnet"
fi

if [[ -d "/usr/share/dotnet" ]]; then
	export DOTNET_ROOT=/usr/share/dotnet
	PATH="$PATH:/usr/share/dotnet"
fi
