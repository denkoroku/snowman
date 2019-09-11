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
    assert_equal("******", @hidden_word1.display_word)
  end




end
