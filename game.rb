class Game

  attr_accessor :player, :hidden_word, :guessed_letters

  def initialize(player, hidden_word)
    @player = player
    @hidden_word = hidden_word
    @guessed_letters = []
  end

  def make_guess(letter)
    @guessed_letters.push(letter)
    if !@hidden_word.check_letter(letter)
      @player.lose_life
    end
    return hidden_word.check_letter(letter)
  end

  def display_word
    @hidden_word.display_word(@guessed_letters)
  end

  def is_won?
    if @hidden_word.is_guessed?(@guessed_letters)
      return true
    else
      return false
    end
  end


end
