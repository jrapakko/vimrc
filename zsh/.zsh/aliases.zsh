alias ll='ls -GFlash'
alias rm='rm -i'
alias cs='cd;ls'

# Get which system we're running on
uname=`uname -s`

# OS X Alias for macvim
if [[ $uname[0,6] == 'Darwin' ]]; then
  alias vi=mvim
  alias vim=mvim
  # -G not colors on many OSes
  alias ll='ls -GFlash'
# Cygwin aliases
elif [[ $uname[0,6] == 'CYGWIN' ]]; then
  alias ll='ls -Flash --color=always'
# Fedora shows up as "Linux"
elif [[ $uname[0,5] == 'Linux' ]]; then
  alias ll='ls -Flash --color=always'
# Default
else
  alias ll='ls -Flash --color=always'
fi

alias frankly='cd $HOME/frankly'
