
#Create necessary methods:

#method to check if the letter input from user2 is in the word
#input: letter
#steps: check if letter is in array, return true if it is.
#output: true/false

#method to subsitute "_" by right letter
#input: letter
#steps: substitue letter at right index
#output: updated array

#Print updated "______" with guessed letters
#input:
#steps: print game progress using #each
#output: updated array printed

#Add driver code
# => Ask user for word and store in a variable
# => Call method to store word
# => Create array of empty "_" with the length of the word
# => Set variable for guesses limit with the length of the word * 2
# => Create a condition for repeated letters
# => Ask user to start guessing letters
# => Call method to check input letter
# => Update array to print and print it
# => Ask for the next letter
# => Add win/lose message

class Game
  attr_reader :password_progress, :password
  attr_accessor :available_guesses

  def initialize(word)
    @password = word.split(//)
    @password_progress = ("_" * word.length).split(//)
    @available_guesses = word.length*2
  end

  def letter_check(letter)
    if @password.include?(letter)
      true
    else
      false
    end
  end

  def substitute_letter(letter_input)
    all_index = []
    index = 0
    @password.each do |letter|
      if letter == letter_input
        all_index << index
      end
      index += 1
    end
    all_index.each do |index_to_sub|
      @password_progress.insert(index_to_sub, letter_input)
      @password_progress.delete_at(index_to_sub+1)
    end
  end

  def repeated_guess(letter)
    if @password_progress.include?(letter)
      true
    else
      false
    end
  end

  def game_continues
    @password_progress.include?("_")
  end

  def print_progress
    @password_progress.each { |letter| print "#{letter} " }
  end

end


#Driver Code

puts "-"*45
puts "      Welcome to the GUESS THE WORD game!"
puts "-"*45
puts "Player 1, enter a word for your oponent to guess:"
word_input = gets.chomp.downcase

game = Game.new(word_input)

puts "Player 2, here is the word you have to guess:"
game.print_progress

puts "  <= You have #{game.available_guesses} opportunities. Say a letter to guess the word!"

until game.available_guesses == 0 || !game.game_continues
  input_letter = gets.chomp.downcase
  if !game.repeated_guess(input_letter)
    game.available_guesses -= 1
  end
  if game.letter_check(input_letter)
    game.substitute_letter(input_letter)
  end
    game.print_progress
    puts "<= You have #{game.available_guesses} opportunities left. Say another letter!"
end

if game.game_continues
  puts "Sorry you are out of opportunities. You lost :("
else
  puts "You won! Congratulations!"
end