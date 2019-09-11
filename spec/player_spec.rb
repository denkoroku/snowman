require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../player')
require_relative ('../game')
require_relative ('../hidden_word')

class TestPlayer < MiniTest::Test

  def setup
    @player1 = Player.new("Jo")
  end

  def test_has_lives?
    assert_equal(true, @player1.has_lives?)
  end


  def test_lose_life
    @player1.lose_life
    @player1.lose_life
    @player1.lose_life
    assert_equal(3, @player1.number_of_lives)
  end

  def test_lost_all_lives
    @player1.lose_life
    @player1.lose_life
    @player1.lose_life
    @player1.lose_life
    @player1.lose_life
    @player1.lose_life
    assert_equal(false, @player1.has_lives?)
  end

end
