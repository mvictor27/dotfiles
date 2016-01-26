#!/bin/bash

cd "$(dirname "$BASH_SOURCE")" \
    && source 'utils.sh'

declare -a DIRECTORIES=(
        "$HOME/Projects"
        "$HOME/xCode"
        "$HOME/Book's"
)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {
    printf  "\n trying to create directories \n "

    for i in ${DIRECTORIES[@]}; do
        mkd "$i"
    done
}

main
