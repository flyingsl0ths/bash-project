#!/usr/bin/env bash
# File: guessinggame.sh

function guessingGame()
{
  local numFiles=$(ls -A | wc -l)

  echo "GUESSING GAME"

  while [[ $get_num -ne $numFiles ]]
  do
    echo "Guess how many files are in this directory"
    read get_num
    if [[ $get_num -ge $numFiles ]]
    then
      echo "Too High"
    elif [[ $get_num -le $numFiles ]]
    then
      echo "Too low"
    fi
  done
  
  echo "Correct there are $get_num files in this directory!!"
}

guessingGame

