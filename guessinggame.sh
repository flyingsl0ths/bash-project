#!/usr/bin/env bash
# File: guessinggame.sh

function guessingGame()
{
  local numFiles=0
  local get_num=0

  for f in $(ls -A)
  do
    let numFiles++
  done

  echo "GUESSING GAME"

  unset get_num
  while [[ ! $get_num = $numFiles ]]
  do
    echo "Guess how many files are in this directory"
    read get_num
    if ! [[ ${get_num} -ge 0 && ${get_num} -le $numFiles ]]
    then
      echo "Nope try again"
      unset get_num
    fi
  done
  echo "Correct there are $get_num files in this directory!!"
}

guessingGame
