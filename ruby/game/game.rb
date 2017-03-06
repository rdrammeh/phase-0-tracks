# ///Pseudocode /////// # 
# create a class for the game
# define methods for initialize and player 2
# separate characters of the secret word and replace them with dashes 
# ask player 2 to guess a letter 
# their number of guesses is 1 - the length of the word 
# if they guess the right word, write you got it right 
# if not, tell them to keep guessing until they do 


class GuessTheWord

  attr_accessor :secret_word, :clue

  def initialize(secret_word)
    @secret_word = secret_word.split('')
    @guess_progess = "_" * @secret_word.length
    @guesses = []
    @guess_count = 0
  end

  def guesses
    guess = @secret_word.length
      until guess == 0 
        puts "Guess a letter"
        letter = gets.chomp
          if guesses == 1
            puts "Last guess"
          end
          guess -= 1
      end 
  end

  def current_guess(letter)
    if @guesses.inclue?(letter)
      puts "You've already guessed this"
    else 
      @guesses << letter 
      @guesses += 1 
    end
  end

end

puts "Welcome to the GuessTheWord Game!"
game = GuessTheWord.new("apple")

puts "Guess The Word!"
guess = gets.chomp 
  if guess == @secret_word
      puts "WOWZA! You guessed the word!"  
  else 
      puts "Keep guessing! You have #{@guesses} left. Guess the word"
      guess = gets.chomp 
  end


