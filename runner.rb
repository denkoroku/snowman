require_relative ('./player')
require_relative ('./game')
require_relative ('./hidden_word')

 player = Player.new("Jo")
 hidden_word = HiddenWord.new("house")
 game = Game.new(player, hidden_word)

 while game.is_won? == false && player.has_lives?
   print "Enter your guess letter: "
   guess = gets.chomp
   game.make_guess(guess)
   puts game.display_word
  end
