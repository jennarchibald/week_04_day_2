require('minitest/autorun')
require('minitest/rg')
require_relative('../models/game')


class TestGame < MiniTest::Test

  def setup()
    @game1 = Game.new("rock", "paper")
    @game2 = Game.new("scissors", "paper")
    @game3 = Game.new("rock", "scissors")

    @game4 = Game.new("paper", "rock")
    @game5 = Game.new("paper", "scissors")
    @game6 = Game.new("scissors", "rock")

  end

    def test_game_has_two_players
      assert_equal("Rock", @game1.player1)
      assert_equal("Paper", @game1.player2)
    end

    def test_game_can_draw
      game = Game.new("rock", "rock")
      assert_equal("a draw", game.play)
    end

    def test_paper_beats_rock
      assert_equal("Paper", @game1.play())
      assert_equal("Paper", @game4.play())
    end

    def test_scissors_beats_paper
      assert_equal("Scissors", @game2.play())
      assert_equal("Scissors", @game5.play())
    end

    def test_rock_beats_scissors
      assert_equal("Rock", @game3.play())
      assert_equal("Rock", @game6.play())
    end

    def test_game_has_winner
      @game1.play()
      assert_equal("Player 2", @game1.winner)
    end
end
