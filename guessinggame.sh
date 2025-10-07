#!/usr/bin/env bash
# File: guessinggame.sh

function ask_guess {
  echo "How many files are in the current directory?"
  read guess
}

file_count=$(ls -1 | wc -l)
ask_guess

while [[ $guess -ne $file_count ]]
do
  if [[ $guess -lt $file_count ]]
  then
    echo "Too low! Try again."
  else
    echo "Too high! Try again."
  fi
  ask_guess
done

echo "Congratulations! You guessed right!"
