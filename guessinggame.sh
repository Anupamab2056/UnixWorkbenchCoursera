#!/bin/bash

# Function to count files in the current directory
function file_count {
  echo $(ls -1 | wc -l)
}

# Get the correct answer
correct=$(file_count)

echo "Welcome to the Guessing Game!"
echo "Guess how many files are in the current directory:"

# Start guessing loop
while true
do
  read guess

  if [[ $guess -eq $correct ]]
  then
    echo "🎉 Congratulations! You guessed it right!"
    break
  elif [[ $guess -lt $correct ]]
  then
    echo "Too low! Try again:"
  else
    echo "Too high! Try again:"
  fi
done
