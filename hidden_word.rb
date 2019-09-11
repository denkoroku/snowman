class HiddenWord

  attr_accessor :word

def initialize(word)

  @word = word

  end

  def display_word(guessed_letters)
    word_to_display = []
    for letter in @word.chars
      if guessed_letters.include?(letter)
        word_to_display.push(letter)
      else
        word_to_display.push("*")
      end
    end
  return word_to_display.join
  end

  def check_letter(letter)
    return true if @word.chars.include?(letter)
    return false
  end

  def is_guessed?(letters)
    return true if @word.chars.sort == letters.sort
    return false

  end

  # def star_removal
  #   word_to_display = []
  #   for letter in @word.chars
  #     word_to_display.push("*") if check_letter(guessed_letter) == false
  #     word_to_display.push(guessed_letter) if check_letter(guessed_letter) == true
  # end
  #   return word_to_display.join
  # end


end
