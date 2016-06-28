  #!/bin/bash

  cd "$(dirname "$BASH_SOURCE")" \
    && source '../utils.sh' \
    && source 'utils.sh'

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  main() {
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    #add script for creat a folder
    ./create_directories.sh
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    #add script for creat a setup OS X preferince
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    ./update_and_upgrade.sh
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    ./install_homebrew.sh
    # brew_install 'Homebrew Cask' 'caskroom/cask/brew-cask' 'caskroom/cask'
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    ./cleanup.sh
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    #add script for add application
    ./add_applications.sh
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
     #add script for set osX settings 
    ./install_commands.sh
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    print_in_green '\n  ---\n\n'
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  }

  main
