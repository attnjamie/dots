# Prompt

export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\]\n\$ '
# Directory Shortcuts

alias ls="ls -G"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias cds='cd src/server/'
alias cdr='cd src/repos/server'
alias cdv='cd /srv/nfs-server'

# Git Aliases
createBranch(){
	git checkout -b $1 origin/master;
}

alias g='git'
alias gs='git status'
alias gb='git branch'
alias gcm='git commit -am'
alias gco=createBranch

git config --global color.ui true

# Git Autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.profile
eval "$(rbenv init -)"
