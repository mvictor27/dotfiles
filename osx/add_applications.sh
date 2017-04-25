#!/bin/bash

cd "$(dirname "$BASH_SOURCE")" \
    && source '../utils.sh' \
    && source 'utils.sh'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # Check if `Homebrew` is installed
    print_in_green  '\n trying to get applications \n'

    if ! cmd_exists 'brew'; then
        print_error 'Homebrew is required, please install it!\n'
        exit 1
    fi

    if ! cmd_exists 'git'; then
        brew_install 'Git' 'git'
    fi

    if ! cmd_exists 'atom'; then
         brew_install 'Atom' 'atom' 'caskroom/cask' 'cask'
    fi

    # if ! cmd_exists 'transmission'; then
    #       brew_install 'Transmission' 'transmission' 'caskroom/cask' 'cask'
    # fi

    # if ! cmd_exists 'the-unarchiver'; then
    #       brew_install 'Unarchiver' 'the-unarchiver' 'caskroom/cask' 'cask'
    # fi

    # if ! cmd_exists 'vlc'; then
    #       brew_install 'VLC' 'vlc' 'caskroom/cask' 'cask'
    # fi
    
    print_in_green  '\n applications are installed \n'
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
}

main
