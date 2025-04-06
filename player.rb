class Player
  # Reader for name, and writer for lives
  attr_reader :name
  attr_accessor :lives

  # Initialize the player with a name and lives defaulting to 3
  def initialize(name)
    @name = name
    @lives = 3
  end

  # Decrease the player's lives by 1 when they answer wrong
  def lose_life
    @lives -= 1
  end

  # Check if the player is alive
  def alive?
    @lives > 0
  end
end