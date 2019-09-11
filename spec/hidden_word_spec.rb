require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../player')
require_relative ('../game')
require_relative ('../hidden_word')

class TestHiddenWord < MiniTest::Test

  def setup
    @hidden_word1 = HiddenWord.new("plinth")

  end

  def test_display_word
    assert_equal("******", @hidden_word1.display_word([]))
  end

  def test_check_letter__true
    assert_equal(true, @hidden_word1.check_letter("p"))
  end

  def test_check_letter__false
    assert_equal(false, @hidden_word1.check_letter("x"))
  end

  def test_is_word_guessed__true
    assert_equal(true, @hidden_word1.is_guessed?(["p", "l", "i", "n", "t", "h"]))
  end

  def test_is_word_guessed__false
    assert_equal(false, @hidden_word1.is_guessed?(["p", "l", "i", "n", "t"]))
  end

  def test_display_word
    assert_equal("p*****",@hidden_word1.display_word(["p"]))
  end

  def test_display_word__multiple_letters
    assert_equal("plin**",@hidden_word1.display_word(["p", "l", "i", "n"]))
  end
end
