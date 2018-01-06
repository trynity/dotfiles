unsetopt correct_all 	# Disable autocorrection
setopt promptsubst
setopt promptpercent
setopt null_glob 		# Just return nothing for non-existant fileglob
setopt correct 			# Selective typo correction

source "${ZSH}/lib/functions.zsh"
source "${ZSH_LIB}/functions.zsh"
source "${ZSH_LIB}/path.zsh"

### perlbrew
if [[ -s "${HOME}/.perlbrew/etc/bashrc" ]]; then
  source "${HOME}/.perlbrew/etc/bashrc"
fi

### nvm
source-if-exists "${HOME}/.nvm/nvm.sh"

### python
[[ -f "${HOME}/.pythonrc" ]] && export PYTHONSTARTUP="${HOME}/.pythonrc"

### virtualenv
if [[ -s "/usr/local/share/python/virtualenvwrapper.sh" ]]; then
  source "/usr/local/share/python/virtualenvwrapper.sh"
fi

### DocBook
if [[ -s "/usr/local/etc/xml/catalog" ]]; then
	export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"
fi

### travis
source-if-exists "${HOME}/.travis/travis.sh"

### tmuxinator
source-if-exists "${HOME}/.tmuxinator/scripts/tmuxinator"

### autoenv
source-if-exists "/usr/local/opt/autoenv/activate.sh"

### vagrant
# Use a global vagrant install if we have access to it
[[ -w /var/lib/vagrant ]] && export VAGRANT_HOME="/var/lib/vagrant"

source "${ZSH_LIB}/google.zsh"
source "${ZSH_LIB}/aliases.zsh"
source "${ZSH_LIB}/keychain.zsh"
source "${ZSH_LIB}/osx.zsh"
source "${ZSH_LIB}/linux.zsh"
source "${ZSH_LIB}/aws.zsh"
source "${ZSH_LIB}/ccache.zsh"
source "${ZSH_LIB}/homebrew.zsh"
source "${ZSH_LIB}/plugins.zsh"

source "${ZSH}/oh-my-zsh.sh"

# Rehash completions
zstyle ':completion:*' rehash true

# One final path cleanup
typeset -U path
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
