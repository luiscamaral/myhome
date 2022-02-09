# zsh defaults
##
# set history size
export HISTSIZE=10000
# save history after logout
export SAVEHIST=10000
# history file
export HISTFILE=~/.zhistory
# append into history file
setopt INC_APPEND_HISTORY
# save only one command if 2 common are same and consistent
setopt HIST_IGNORE_DUPS
# add timestamp for each entry
setopt EXTENDED_HISTORY   

# nvm
##
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && . "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
nvm use 16

# go lang 
##
export GOPATH=$HOME/go-workspace # don't forget to change your path correctly!
export GOROOT=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# lamaral - personal preferences
##
alias ll='ls -lah' 
export PATH=~/bin:$PATH
# dev 
##
export GITHUB_TOKEN='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'
export CODESTREAM_GIT_TOKEN='bceaacb5d861872cf1f36544ac5990109f56af3f'

# nodejs
#
export NODE_PATH=/usr/local/lib/node_modules

# jenv
#
eval "$(jenv init -)"
jenv shell openjdk64-11.0.12 && jenv shell

# pyenv
#
eval "$(pyenv init -)"

##
# New Relic
######
# Default Environment
export NEW_RELIC_API_KEY=NRAK-WXVTLHJO67DWUMEGRVG8BHFBZ0W
export NEW_RELIC_ACCOUNT_ID=11062699
export NEW_RELIC_INSIGHTS_INSERT_KEY=29cb90e538a0f924fc48a4a54dcbeefa9f65NRAL
export NEW_RELIC_LICENSE_KEY=29cb90e538a0f924fc48a4a54dcbeefa9f65NRAL
export NEW_RELIC_REGION=staging

# Alias commands to alternate Environments 
# New Relic Terraform Provider Acceptance Testing 
alias nrenv-cli-ut='export NEW_RELIC_ACCOUNT_ID=2520528 && export NEW_RELIC_API_KEY=NRAK-L4I2DF1Y9CU4Q4FEMEILBRXQ35B && export NEW_RELIC_INSIGHTS_INSERT_KEY=3c7d12568172c52d5fc6becdec8a3db6a32c9674 && export NEW_RELIC_LICENSE_KEY=3c7d12568172c52d5fc6becdec8a3db6a32c9674 && export NEW_RELIC_LOG_LEVEL=TRACE && export NEW_RELIC_REGION=US'
# lamaral account prd
alias nrenv-lamaral-us='export NEW_RELIC_ACCOUNT_ID=3298016 && export NEW_RELIC_API_KEY=NRAK-F3DXJEUFG13HNNPJ478TXT534XW && export NEW_RELIC_INSIGHTS_INSERT_KEY=3c29523fa1b72f7ba0c1f5f622feccb9a9ccNRAL && export NEW_RELIC_LICENSE_KEY=3c29523fa1b72f7ba0c1f5f622feccb9a9ccNRAL && export NEW_RELIC_LOG_LEVEL=INFO && export NEW_RELIC_REGION=US'
# default / sre-staging
alias nrenv-sre-staging='export NEW_RELIC_ACCOUNT_ID=11062699 && export NEW_RELIC_API_KEY=NRAK-WXVTLHJO67DWUMEGRVG8BHFBZ0W && export NEW_RELIC_INSIGHTS_INSERT_KEY=29cb90e538a0f924fc48a4a54dcbeefa9f65NRAL && export NEW_RELIC_LICENSE_KEY=29cb90e538a0f924fc48a4a54dcbeefa9f65NRAL && export NEW_RELIC_LOG_LEVEL=INFO && export NEW_RELIC_REGION=staging'

alias nrlogin='aws sso login --profile NRLogin'
alias nr-login='nrlogin'
alias nrvpn='sudo openconnect --protocol=anyconnect --csd-wrapper csd-wrapper.sh --user="lamaral" --authgroup "NR-ENG-FULL" vpn.ord.us.nr-net.work'

# Kubernetes Aliases
export SPACESHIP_KUBECTL_VERSION_SHOW=false
alias kgetall='kubectl get pods --all-namespaces'
alias enablekubeprompt='export SPACESHIP_KUBECTL_SHOW=true'

# Google
# https://console.cloud.google.com/apis/credentials?authuser=1&project=mindful-genius-332400&supportedpurview=project
export GOOGLE_API_KEY='AIzaSyBOOHp82iWJ3DzO2z9ibuZlCCvvJmTxm-s'

# Spaceship prompt init
export SPACESHIP_TIME_SHOW=true 
