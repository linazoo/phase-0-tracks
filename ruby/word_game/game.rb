# Design a game
# HangMan - word guessing game

# PSEUDO CODE
# Create a class WordGame
# getter/setter methods?
# state/attributes (word, guess count, game over)
# behaviours (update and display feedback, end the game)



# USER INTERFACE
# prompt user for a word - player one
# initialize instance
# turn word into one letter strings - get that word and store it
# create empty array to hold guessed letters

# display " _ " for each letter guessed
# until guess count equals length of the word
#   if letter is in secret word
#   guess count goes up unless letter is already in guessed letters - guessed letters go into array unless its already been guessed
#   check position of the letter in the secret word

# otherwise ...
#   if guessed letter is not in the secret word
#   shovel that guessed letter into the array of guessed letters
#   guess count goes up

# otherwise
#   guess count stays the same
#   display feedback/current state on the screen
#   display guess count
#   determine if game is over
#   if it is display a winning or tauntin message


# WE HAVE TO KEEP TRACK OF THIS
# secret_word
# guess_count (integer - )
# updated_guess (as long as the secret word and will replace letter with underscores)
# wrong_letters (array)
# Through that we'll know when to end the game

# ACTIONS
# ex check_cup

# new instance of the class to initialize the game after they give you the word - se
# endter a word
# new game equals ________ secret word

# thanks for entering
# while you are guessing keep going until the word is completed

#puts -----------------------------------------

# FAILED ATTEMPT 1 aka RESEARCH

# class WordGame
#   attr_reader :word, :updated_word

#   def initialize(word)
#     @word = word
#     @found_letters = []
#     @wrong_letters = []
#     @updated_word = ''
#   end

#   def check_letter(guessed_letter)
#     @word.chars.each do |letter|
#       if letter === guessed_letter
#         # update the @updated_word and show the user that new updated word
#         @found_letters << guessed_letter
#         update_word_based_on_guess
#       else
#        @wrong_letters << guessed_letter
#       end
#     end
#   end

  # return the @updated_word with the letters filled in
  # def update_word_based_on_guess
    # puts "thats right there is a #{letter} in #{@word}"

    # found_letters = []
    # @word.chars.map do |letter|
    #   if letter === guessed_letter
    #     found_letters << guessed_letter

    #   else

    #   end
    # end
  # end

  # creates a set of blanks for every letter in the secret word
#   def create_blank_word(secret_word)
#     secret_word.split("").each do |letter|
#       @updated_word << '_ '
#     end
#     return @updated_word
#   end

# end

# puts "Player One: enter a secret word"

# secret_word = gets.chomp
# # instantiate a new instance of the game
# game = WordGame.new(secret_word)
# # create the blank word by calling create_blank_word on the instance of the game
# game.create_blank_word(secret_word)

# puts "alright, we have the secret word, the other player now has #{secret_word.length} tries to guess the word by entering a letter"
# puts "here is the word so far: #{game.updated_word}"


# puts "please guess a letter"
# number_of_guesses = 0
# guess = gets.chomp

# while number_of_guesses <  secret_word.length - 1
#   # check the letter that was guessed
#   game.check_letter(guess)
#   puts "this is the updated word: #{game.updated_word}"
#   number_of_guesses += 1
#   puts "please guess a new letter"
#   guess = gets.chomp
# end

# puts "you're out of the loop"


# FINAL GAME

class WordGame
  def initialize(starting_sentence)
    @starting_sentence = starting_sentence
    @sentence_array = @starting_sentence.split("").map(&:downcase)
    @accurate_count = @sentence_array - [" "]
    @final_sentence = @starting_sentence.gsub(/[a-zA-Z]/, "_").split("")
    @guess_count = 0
  end

  def play_game
    while @guess_count < @accurate_count.count
      puts "Player two: you have #{@accurate_count.count - @guess_count} guesses. Dont fuck it up! start guessing each letter now: "
      guess = gets.downcase.chomp

      if @sentence_array.include?(guess)
        letter_index = @sentence_array.find_index(guess)
        @sentence_array[letter_index] = ""
        @final_sentence[letter_index] = guess
        puts "Correct! The sentence is now: #{@final_sentence.join}"
      else
        puts "Sorry loser, better luck next time"
      end
      @guess_count += 1
    end
  end

end

#DRIVER CODE
puts "Lets play a sick game. Player one; enter a secret word: "
secret_word = gets.downcase.chomp
game = WordGame.new(secret_word)
game.play_game