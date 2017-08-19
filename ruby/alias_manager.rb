# letters = "hello world".split('')
# letters.class
# letters.map! { |letter| letter.next }
# letters
# new_string = letters.join('')

# "hello".chars

# "hello world".split(' ')

#>>----------------###---------------------

#A method that takes a spy's real name (Felicia Jones) and creates a fake name with it by doing the following:


#swapping the first and last name


#changing all of the vowels (a,e,i,o,u) to the next vowel

# changing all the consonants (everything else besides the vowels) to the next consonant in the alphabet. so 'a' would become 'e', 'u' would become 'a' and 'd' would become 'f'

#consider this: when will it be helpful to convert the string to an array to work with it more easily?

#how will you figure out whether a letter is a vowel?

#how will you deal with the fac tthat some letters are uppercase?

#how will you handle edge cases?

#creating a loop that checks to see if the vowels array includes a character in the real spy name:


def translate(real_name) # "lina"
  vowels = ['a', 'e', 'i', 'o', 'u']
  index = 0
  spy_name = ""
    while index < real_name.length
      if vowels.include?(real_name[index]) #its a vowell
        if real_name[index] == "u" #the current letter is "u" so we wanna make it go to "a"
          spy_name << "a"
        else # its a normal vowel so we want to keep going down the list of vowels
          vowel = real_name[index] # "i" the vowel that was found in the real_name
          vowel_index = vowels.index(vowel) # 2 - the index of "i" in our array of vowels
          spy_name << vowels[vowel_index + 1]
        end
      elsif real_name[index] == " " #its a space
        spy_name << " "
      else #its a consonant
        spy_name << real_name[index].next
      end
    index += 1
  end
  return spy_name
end

list_of_spy_names = [] #to store the names
puts "What is your real name?"
real_name = gets.chomp
until real_name == "done"
  spy_name = translate(real_name)
  list_of_spy_names << spy_name
  puts "Cool! your spy name is #{spy_name}"
  puts "Please enter the next name you want to translate or enter done"
  real_name = gets.chomp
end

#iterate through our list of spy names
puts "Your new spy names are: "
list_of_spy_names.each { |spy_name|
  puts "#{spy_name}"
}
# array_of_names = ["Felicia", "Torres"]
# # translate(array)


# array_of_names.each { |name|
#   spy_name = translate(name)
#   puts "your real name is #{name} and your spy namme is #{spy_name}"
# }