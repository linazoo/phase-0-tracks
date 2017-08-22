# BUSINESS LOGIC

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    puts "Woof"*int
  end

  def roll_over
    p "*rolls over*"
  end

  def dog_years(int)
    p "Your dog is #{int*7} in human years."
  end

  def gets_scared(str)
    p "Butters is afraid of #{str}!"
  end

  def initialize
    p "Initializing new puppy instance ..."
  end

end

class Dog_Owner

  def initialize
  "A new dog owner has arrived:"
  end

  def give_treat
  p "Give a treat to the dog."
  end

  def walks_puppy
  p "Took a walk around the park. What a lovely day!"
  end

end

# DRIVER CODE

# butters = Puppy.new

# butters.fetch("ball")
# butters.speak(3)
# butters.roll_over
# butters.dog_years(3)
# butters.gets_scared("lightning")

# Lina = Dog_Owner.new

# Lina.give_treat(8)
# Lina.walks_puppy

# Create an array of owners with Loop
dog_owner_list = []
new_array =[]

0.upto(50) { |owner| dog_owner_list << owner }

# Convert Array elements into instances
dog_owner_list.each do |owner|
  new_array << owner = Dog_Owner.new
end

# Iterate
new_array.each do |owner|
  owner.give_treat
  owner.walks_puppy
end