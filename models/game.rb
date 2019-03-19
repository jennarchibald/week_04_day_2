class Game
  attr_reader :player1, :player2
  def initialize(player1, player2)
    @player1 = player1.capitalize
    @player2 = player2.capitalize

    @solutions = {
      'Rock' => {
        'Rock' => 'a draw',
        'Paper' => 'Paper',
        'Scissors' => 'Rock'
      },
      'Paper' => {
        'Rock' => 'Paper',
        'Paper' => 'a draw',
        'Scissors' => 'Scissors'
      },
      'Scissors' => {
        'Rock' => 'Rock',
        'Paper' => 'Scissors',
        'Scissors' => 'a draw'
      }
    }
  end


  def play()
     return @solutions[@player1][@player2]

    # if @player1 == @player2
    #   return "a draw"
    # end
    #
    # case @player1
    # when "Rock"
    #   if @player2 == "Paper"
    #     result = @player2
    #   elsif @player2 == "Scissors"
    #     result = @player1
    #   end
    #
    # when "Paper"
    #   if @player2 == "Rock"
    #     result = @player1
    #   elsif @player2 == "Scissors"
    #     result = @player2
    #   end
    #
    # when "Scissors"
    #   if @player2 == "Paper"
    #     result = @player1
    #   elsif @player2 == "Rock"
    #     result = @player2
    #   end
    #
    # end
    #
    # return result
  end

  def winner()
    result = play()
    return "no one" if result != @player1 && result != @player2
    winner = (result == @player1) ? "Player 1" : "Player 2"
    return winner
  end
end
