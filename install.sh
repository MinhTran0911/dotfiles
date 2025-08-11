#!/bin/bash

# List of valid modules
VALID_MODULES=( 'neovim' 'alacritty' 'fastfetch' )

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Check if any arguments were provided
if [ $# -eq 0 ]; then
  echo "Error: No arguments provided. Nothing to install."
  echo "Usage: $0 [option]..."
  echo "Options: all ${VALID_MODULES[@]}"
  exit 1
fi

if [ -z "$(command -v stow)" ]; then
  echo "Fatal: command \"stow\" not found."
  return 1
fi

modules_to_install=()

# Check if "all" is passed as an argument
for arg in "$@"; do
  if [ "$arg" = "all" ]; then
    # Convert VALID_VALUES string to array
    modules_to_install=( "${VALID_MODULES[@]}" )
    break
  else
    valid=0
    # Add argument to array if it's valid
    for module in "${VALID_MODULES[@]}"; do
      if [ "$arg" = "$module" ]; then
        modules_to_install+=( "$arg" )
        valid=1
        break
      fi
    done
    if [ $valid = 0 ]; then
      echo "Error: Unrecognized module to install: $arg"
      exit 1
    fi
  fi
done

cd ${DOTFILES_DIR}

# Loop through the array and perform dummy task
for module in "${modules_to_install[@]}"; do
  printf "Installing $module ... "
  stow -t $HOME $module
  if ( $status = 0 ) then
    echo "Done"
  else
    echo "Failed"
  fi
done

exit 0
