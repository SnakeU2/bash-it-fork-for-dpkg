#!/usr/bin/env bash
#
# Example custom script for bash-it
#
# This file can be used as a template for creating your own custom scripts.
# Simply copy this file to a new name and modify it to your needs.
#
# The file will be loaded automatically by bash-it when it starts.
#
# For more information, see the documentation:
# https://github.com/Bash-it/bash-it/blob/master/docs/custom.rst

# Example function
my_function() {
  echo "Hello from my custom function!"
}

# Example alias
alias hello='echo "Hello from my custom alias!"'

# Example variable
export MY_CUSTOM_VAR="Hello from my custom variable!"

# Example completion
_my_completion() {
  local cur prev opts
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"
  opts="option1 option2 option3"

  if [[ ${cur} == * ]]
  then
    COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
    return 0
  fi
}

complete -F _my_completion my_command
