class Game
  attr_reader :player1, :player2, :winner
  def initialize(player1, player2)
    @player1 = player1.capitalize
    @player2 = player2.capitalize
    @winner = "no-one"
  end


  def play()
    if @player1 == @player2
      return "a draw"
    end

    case @player1
      when "Rock"
        if @player2 == "Paper"
          result = @player2
          @winner = "Player 2"
        elsif @player2 == "Scissors"
          result = @player1
          @winner = "Player 1"
        end

      when "Paper"
        if @player2 == "Rock"
          result = @player1
          @winner = "Player 1"
        elsif @player2 == "Scissors"
          result = @player2
          @winner = "Player 2"
        end

      when "Scissors"
        if @player2 == "Paper"
          result = @player1
          @winner = "Player 1"
        elsif @player2 == "Rock"
          result = @player2
          @winner = "Player 2"
        end

      end

    return result
  end
end
