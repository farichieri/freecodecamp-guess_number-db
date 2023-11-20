#!/bin/bash

# Connect to db.
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Generate a random number between 0 and 1000.
RANDOM_NUMBER=$((RANDOM % 1001))

GUESS() {
  local GUESS_COUNT=0
  local USER_NAME=$1

  USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name='$USER_NAME';")

  # while true, ask for a new number until it is guessed.
  while true
  do
    read NUMBER_GUESS

    if [[ ! $NUMBER_GUESS =~ ^[0-9]+$ ]]
    then
      echo "That is not an integer, guess again:"
    
    # Check if the user's guess is correct.
    else
      ((GUESS_COUNT++))

      if [ "$NUMBER_GUESS" -eq "$RANDOM_NUMBER" ]; then
        INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, game_guesses) VALUES($USER_ID, $GUESS_COUNT);")
        echo "You guessed it in $GUESS_COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"
        return
      elif [ "$NUMBER_GUESS" -lt "$RANDOM_NUMBER" ]; then
        echo "It's higher than that, guess again:"
      else
        echo "It's lower than that, guess again:"
      fi
    fi
  done
}

if [[ $1 ]]
then
  echo -e "Usage: ./number_guess.sh"
else
  # get user name.
  echo -e "Enter your username:"
  read USER_NAME

  # get user_id.
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name='$USER_NAME';")

    # if user doesn't exist.
    if [[ -z $USER_ID ]]
    then
      # insert new user and print welcome.
      INSERT_PLAYER_RESULT=$($PSQL "INSERT INTO users(user_name) VALUES('$USER_NAME');") 
      echo -e "\nWelcome, $USER_NAME! It looks like this is your first time here."
    else
      # get games_played and best_game and print welcome.
      GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID;")
      BEST_GAME=$($PSQL "SELECT MIN(game_guesses) FROM games WHERE user_id=$USER_ID;")
      echo -e "\nWelcome back, $USER_NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
    fi

  # instructions and call GUESS function.
  echo -e "Guess the secret number between 1 and 1000:"
  GUESS "$USER_NAME"
fi