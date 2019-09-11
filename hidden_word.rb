class HiddenWord

  attr_accessor :word

def initialize(word)

  @word = word

  end

  def display_word
    word_to_display = []
    for letter in @word.chars
      word_to_display.push("*")
    end
    return word_to_display.join
  end
end
