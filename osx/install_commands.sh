#!/bin/bash

cd "$(dirname "$BASH_SOURCE")" \
    && source '../utils.sh' \
    && source 'utils.sh'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

printf  "\n traying to set os X commands \n"

defaults write com.apple.finder AppleShowAllFiles TRUE

killall Finder
    

print_result $? 'set os X commands'

}

main
