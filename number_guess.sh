#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read NAME

#checks if the user is avaible in db
USER=$($PSQL "select name from users where name='$NAME'")

if [[ -z $USER ]]
then 
  echo "Welcome, $NAME! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "select count(game_id) from users where name='$NAME'")
  BEST_GAME=$($PSQL "select min(guesses) from users where name='$NAME'")
  echo "Welcome back, $USER! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Game starts
RESULT=$((RANDOM % 1000 + 1))
COUNT=1
echo "Guess the secret number between 1 and 1000:"

# checks if user guesses the number
GAME() {
read NUMBER

# checks if the number input is given
if [[ $NUMBER =~ ^[0-9]+$ ]]
then
  if [[ $NUMBER -gt $RESULT ]]
  then 
    echo "It's higher than that, guess again:"
    (( COUNT++ ))
    GAME
  elif [[ $NUMBER -lt $RESULT ]]
  then
    echo "It's lower than that, guess again:"
    (( COUNT++ ))
    GAME 
  else
   echo "You guessed it in $COUNT tries. The secret number was $NUMBER. Nice job!"
  fi
else
  echo "That is not an integer, guess again:"
  GAME
fi
}

GAME

#insert the game record in db
INSERT=$($PSQL "insert into users(name, guesses) values ('$NAME', $COUNT)")
