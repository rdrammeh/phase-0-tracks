
#for each step verivfy that you are doing the correct maniuplation
#possibly consider how to handle capital letters, either you will downcase the name in the begininng and then capitalize each word at the end or 
#have yoru vowel and consonant swappers handle capital letters
def create_spy_alias(name)
  swapped_name = name_swapper(name) #-> 'Torres Felicia'
  swapped_vowels = vowel_swapper(swapped_name) #-> 'Turris Femidia'
  swapped_consonants = consonatn_swapper(swapped_vowels) #=> 'Vussit Gimodoe'
  swapped_consonants
end



loop do

#get the user input
# break if input == 'some pharse'
#make the alias
# save the alias in a data strucrue; hint use a hash key ->



end












p create_spy_alias('Felicia Torres') == 'Vussit Gimodoe'



#=======================================================
loop do 
  
  # Ask the user for their name
  puts "What is your name?"
  citizen_name = gets.chomp 
    
  def swap_name(name)
    name.downcase.chars.reverse
  end
    
  letters = []
  letters << swap_name("#{citizen_name}")
  
  def next_letter(array)
    vowels = "aeiou"
    alphabet = "bcdfghjklmnpqrstvwxyz"
    index = 0
      while index < array.length 
        array.each do |letter|
          if letter.include?(vowels)
            letter = vowels.index(letter).next!
            p letter
          end
          if letter.include?(alphabet)
            letter = alphabet.index(letter).next!
            p letter
          end
          index += 1
        end
        p array
      end
  end
  
  p next_letter(letters)
    
break if citizen_name == "quit" || citizen_name == ""
end

alias = {}