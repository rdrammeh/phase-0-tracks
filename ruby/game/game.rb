=begin
#-- GUESS THE WORD --#
1. Create a class for this game 
2. Create an initialize method that sets the name of two players and the number of guesses 
3. Create a method (secret_word)
- takes word from player 1 and turns the word into spaces disguising the word 
4. Create a method (guessing_letters)
- that takes guesses from player 2 one letter at a time 
- if letter is there, replace empty space with letter 
- if letter isn't there, say no and ask for another guess 
- player 2 only has as many guesses as the length of the secret word - 1
5. Outside of the class create conditional logic that takes all of these pieces to play the game. 
=end

class Game 
  attr_reader :word, :winner, :guesses, :secret_word_arr

  def initialize
    @winner = false
  end

  def secret_word(word)
    @secret_word_arr = word.split(//)
    @secret_word_arr.map! do |letter|
      letter = "_"
    end
  end

  def guesses 
    @guesses = @word.length + 2
  end

  def guess_word(letter)
    @guesses += 1
    if @word.include?(letter) 
      @secret_word.delete("#{letter}")
      #@secret_word.gsub(/[@word.index(letter)]/, ' _ ' => letter)
    end
  end 

end

#-- Guess That Word! --#
puts "Let's play Guess That Word!"
game = Game.new 

puts "Player 1:" 
puts "Give us a word..."
game.secret_word("lexicon")
puts "______________________________"

#Making space so that player 2 doesn't see the word.
50.times do 
  puts " "
end

puts "Player 2:"
puts "Your word has #{game.word.length} letters, therefore you have #{game.guesses} guesses for this game."
puts game.secret_word("lexicon")

puts "Guess a letter in this word:"
puts game.guess_word("x")

