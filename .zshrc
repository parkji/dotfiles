# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pure"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/opt/ruby/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/npm/bin

# Aliases
alias la='ls -la'
alias gi='grunt-init'
alias brewup="brew update && brew upgrade && brew cleanup"
alias ipaddr="ifconfig |grep -oE 'inet (\d{2,3}\.\d{1,3}\.\d{1,2}\.\d{2,3})' | sed 's/inet //'"
alias ws="python -m SimpleHTTPServer"

# NVM
export NVM_DIR="/Users/ben/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Python and virual env stuffs
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh
export PYTHONDONTWRITEBYTECODE=1

# MOO stuff
# Thingy related config.
alias thingy="/usr/bin/perl5.16 $HOME/Development/thingy/thingy.pl -c localdev"
PERL_MB_OPT="--install_base \"/Users/ben/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/ben/perl5"; export PERL_MM_OPT;

# Sync commands for sub apps.
alias syncPixel="rsync -avz --delete $HOME/Development/pixel/_dist/. goth:~/moo/subapps/pixel/main/abc123"
alias syncPdpBrowse="rsync -avz --delete $HOME/Development/pdpbrowse/_dist/. goth:~/moo/subapps/pdpbrowse/main/"
alias syncFullUpload="rsync -avz --delete $HOME/Development/fullupload/_dist/. goth:~/moo/subapps/fullupload/main/"
alias syncPackPreview="rsync -avz --delete $HOME/Development/pack-preview/_dist/. goth:~/moo/subapps/packpreview/main/"
alias syncNfc="rsync -avz --delete $HOME/Development/nfcmanage/_dist/. goth:~/moo/subapps/nfcmanage/main/"

JIRA_URL="http://jira.moo.com"
