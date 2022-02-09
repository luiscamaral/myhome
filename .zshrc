export PATH="/usr/local/sbin:$PATH"
autoload -U promptinit; promptinit
prompt spaceship

# nr1 autocomplete setup
NR1_AC_ZSH_SETUP_PATH=/Users/lamaral/Library/Caches/newrelic-cli/autocomplete/zsh_setup && test -f $NR1_AC_ZSH_SETUP_PATH && source $NR1_AC_ZSH_SETUP_PATH;