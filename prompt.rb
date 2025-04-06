class Prompt
  # Display a prompt message and wait for user input
  def self.get_input(prompt)
    print prompt
    gets.chomp
  end

  # Display a message to the console
  def self.display(message)
    puts message
  end

  # Display the current lives of both players
  def self.show_lives(player1, player2)
    puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
  end

  # Display a message indicating the end of the game
  def self.game_over(winner)
    puts "#{winner.name} wins with remaining lives of #{winner.lives}/3!"
  end
end