class Question
  # Reader for num1, num2, and answer
  attr_reader :num1, :num2, :answer

  # Initialize the question with two random numbers between 1 and 20
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  # Generate a question string with player's name and the random numbers
  def ask_question(player)
    "#{player.name}: What does #{@num1} + #{@num2} equal?"
  end

  # Check if the player's answer is correct
  def correct?(input)
    input.to i == @answer
  end
end