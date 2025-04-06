require_relative 'player'
require_relative 'question'
require_relative 'prompt'

require 'byebug'

class Game
  # Reader for players and prompt
  attr_reader :player1, :player2

  # Initialize the game with two players and a prompt instance
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @cur_player = @player1 # Set the current player to player 1

    byebug
  end

  # Start the game loop
  def play
    # Loop until one player runs out of lives
    while @player1.alive? && @player2.alive?

      puts "Current player: #{@cur_player.name}, Lives: #{@cur_player.lives}"

      # Create a new question
      question = Question.new

      # Ask the current player the question
      Prompt.display(question.ask_question(@cur_player))
      answer = Prompt.get_input("Your answer: ")

      puts "Received answer: #{answer}"

      # Check if the answer is correct
      if question.correct_answer?(answer)
        Prompt.display("You are correct!")
      else
        @cur_player.lose_life
        Prompt.display("Incorrect, #{@cur_player.name} loses a life! You have #{@cur_player.lives} lives left.")
      end
      
      # Display the current lives of both players every turn
      Prompt.show_lives(@player1, @player2)

      raise "Lives mismatch!" unless @player1.lives + @player2.lives == 6

      # Switch to the other player
      @cur_player = @cur_player == @player1 ? @player2 : @player1
    end
    
    # Display winner after the game ends
    winner = @player1.alive? ? @player1 : @player2
    Prompt.game_over(winner)
  end
end
