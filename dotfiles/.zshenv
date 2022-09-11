###################################
# The following fix is is used to run react app in brave when using react scripts
# Change the default browser to brace instead of firefox
###################################
export BROWSER=/usr/bin/brave

###################################
###### ANDROID STUDIO CONFIG ######
###################################
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
###################################
###### USER CONFIG AND ENV # ######
###################################
export DRONE_SERVER=https://builds.josa.ngo
export DRONE_TOKEN=BdxCAZsBj9AtNqkTq5Voqwdhel2HTzcv

###################################
###### MAN PAGES COLORING ######
###################################
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'


