class Player

  attr_accessor :name
  attr_reader :number_of_lives

  def initialize(name)
    @name = name
    @number_of_lives = 6
  end


  def has_lives?
    if @number_of_lives > 0
      return true
    else
      return false
    end
  end

  def lose_life
    @number_of_lives -= 1
  end

end
