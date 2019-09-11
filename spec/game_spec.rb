require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../player')
require_relative ('../game')
require_relative ('../hidden_word')

class TestGame < MiniTest::Test

  def setup
    @player1 = Player.new("Bob")
    @hidden_word1 = HiddenWord.new("plinth")
    @game1 = Game.new(@player1, @hidden_word1)
  end

  # def test_make_guess
  #   @game1.make_a_guess("a")
  #   assert_equal()
  # end

end
