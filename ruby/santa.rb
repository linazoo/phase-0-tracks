# Santa class  - three instance methods


#eat_milk_and_cookies
  #takes a cookie type (white chocolate macademia nut) as a parameter nd prints "that was a good (string interpolation) nut cookie"

class Santa
  attr_reader :ethnicity, :gender
  attr_accessor :name, :age

  def initialize(name, gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @name = name
    @ethnicity = ethnicity
    @age = 0 #rand(0..140)
    # @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

#speak method
  #prints "ho ho ho! happy holidays"

  def speak
    puts "Ho Ho Ho! Haaaaaappy holidays! from #{@name} Santa"
  end

  def eat_milk_and_cookies(cookie_flavor)
    puts "Santa #{@name}: that was a good #{cookie_flavor} cookie!"
  end

  def land(location)
    puts "Landed safely in #{location}"
    @location = location
  end

#when u want to give the instance of class any data u use the instance variables

#if any of your instance methods wanna interact they can without taking them as an argument.

#getter methods:

  # def age
  #   @age
  # end

  # def ethnicity
  #   @ethnicity
  # end

  # def gender
  #   @gender
  # end

  def about
    puts "Name: #{@name}"
  end
  #-----------------------------------

  #SETTER methods (makes something writable)
#location you dont want someone to edit location but maybe we want santa to be able to change his name

  def celebrate_birthday
    @age += 1
  end

  #get mad at reindeer and put it in the back of the reindeer ranking

   def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.insert(8, reindeer_name)
  end

end

#TESTING CODE

# santa = Santa.new("Claus", "female")
# santa.eat_milk_and_cookies("macademia nut")
# santa.speak
# santa.about
# santa.land("Paris")
puts "-----------------------------------"

# santa = Santa.new("Bob", "male")
# santa.eat_milk_and_cookies("chocolate chippy")
# # santa.gender
# santa.land("Colombia")
# santa.about

puts "-----------------------------------"

#SETTER methods test

# santa = Santa.new("Sean", "bigender")
# santa.eat_milk_and_cookies("chocolate chippy")
# santa.land("Colombia")
# puts "Santa's age before his birthday: #{santa.age}"
# santa.celebrate_birthday
# puts "Santa's age after his birthday: #{santa.age}"
# p santa.get_mad_at("Dasher")

puts "-----------------------------------"

# TEST CODE FROM RELEASE

#SOLUTION 1 TOO REPETITIVE
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# puts "-----------------------------------"

#SOLUTION 2 LESS REPETITIVE

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

puts #-----------------------------------

#BUILD MANY SANTAS
#Array of genders and array of ethnicities to create a santa with a randomly selected gender and ethnicity.

genders = ['agender', 'androgyne', 'bigender', 'cis female', 'intersex', 'pangender', 'trans', 'non-binary', 'N/A']

ethnicities = ['latino', 'american', 'scottish', 'mexican', 'chinese', 'irish', 'african', 'dutch']

name_samples = ['Rosa', 'Johnny', 'Hyena', 'Casper', 'Kevin', 'Rooster', 'Seanathan', 'Jordan']
santas = []


santa_count = 0

#how do you randomly select an array item?
until santa_count == 10
  santas << santa = Santa.new(name_samples.sample, genders.sample, ethnicities.sample)
  santa.age = rand(1...140)
  santa_count += 1
end

p santas
#set santa's age to a random number between 0 and 140

#pring out the attributs of each santa using the instance methods that give you access to that data.