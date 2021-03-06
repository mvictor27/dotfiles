#!/bin/bash

cd "$(dirname "$BASH_SOURCE")" \
    && source '../utils.sh'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    # By default Homebrew does not uninstall older versions
    # of formulas, so in order to remove them, `brew cleanup`
    # needs to be used
    #
    # https://github.com/Homebrew/homebrew/blob/b311d1483fa434f6692ab8dddb0bfd876d01a668/share/doc/homebrew/FAQ.md#how-do-i-uninstall-old-versions-of-a-formula
    printf '\n Cleanup gem \n'
    execute 'sudo gem cleanup' 'gem (cleanup)'

    if cmd_exists 'brew'; then
        printf "\n we are cleanup brew \n"
        execute 'brew cleanup' 'brew (cleanup)'
        execute 'brew cask cleanup' 'brew cask (cleanup)'
    fi

}

main
