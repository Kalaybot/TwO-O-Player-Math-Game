# TwO-O-Player-Math-Game

## Description
Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Details
Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

## Planning
- Classes should be define in its own .rb file. Do not put any other code outside the class definition.

- Nouns for Classes:
  - Game Class
  - Question Class
  - Player Class
  - Prompt Class

- Roles and Responsibilities
  1. Game Class
    - Manages the full game loop: players, questions, turns.
    - State:
      - player1
      - player2
      - current_player
    - Behaviour:
      - switch_turn: switch from one player to the other.
      - play_round: generates question, get input, checks answer, update lives.
      - game_over?: returns true if a player has no lives.
      - winner: returns the player who still has lives.
      - start: starts and runs the game loop until someone loses.

  2. Question Class
    - Generates and checks math questions.
    - State:
      - num1: random number between 1 and 20.
      - num2: random number between 1 and 20.
      - answer: sum of num1 and num2.
    - Behaviour:
      - generate: creates a new pair of numbers and calculates the answer.
      - ask_question(player): returns a string like "Player 1: What is 4 + 7?".
      - correct?(input): returns true if input matches the answer.

  3. Player Class
    - Represents a player in the game, tracks lives, and manages their state.
    - State:
      - name
      - lives (default: 3)
    - Behaviour (methods):
      - lose_life: decreases lives by 1.
      - alive?: returns true if lives > 0.

  4. Prompt Class
    - Handles all input and output (user interaction).
    - Behaviour:
      - get_input(prompt): shows prompt and gets user input.
      - display(message): prints a message to the console.
      - show_lives(player1, player2): shows lives left.
      - show_game_over(winner): displays winner and final score.
