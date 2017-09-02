# zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]

# zombie_apocalypse_supplies.each do |supplies|
#   "#{supplies} \n*"
# end

# def look_for_supplies(bag)
#   bag.include?("boots")
# end
# look_for_supplies(zombie_apocalypse_supplies)
# #reminder: zombie_apocalypse_supplies[0] => hatchet
# zombie_apocalypse_supplies.each do |supplies|
#   puts "#{supplies} \n*"
# end
# # zombie_apocalypse_supplies.each {|i| puts "#{i} \n *"}

# new_list = []
# zombie_apocalypse_supplies.each do |i|
#   new_list << i
# end
# new_list = new_list.first(5)
# puts "Sorry we had to remove a few items, here is your new list: #{new_list}"

# 4. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
# other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove","solar battery", "flashlight"]
# combined_supplies = other_survivor_supplies + zombie_apocalypse_supplies
# puts "your combined list is as follows: #{combined_supplies.uniq!}"

# Hash Drills

extinct_animals = {
  "Passenger Pigeon" => 1914,
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash using #each, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
# extinct_animals.each do |name, year|
#   puts "#{name} - #{year} \n*"
# end

# extinct_animals.each do |name, year|
#   if year >= 2000
#       extinct_animals.delete(name)
#   end
# end
# puts  "#{extinct_animals}"
# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000, using #each.
# ----
# extinct_animals.each do |name,date|
#   if date >= 2000
#     extinct_animals.delete(name)
#   end
# end
# puts "These animals were extinct before the year 2000: #{extinct_animals}"


# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# using #each, so they accurately reflect what year the animal went extinct.
# ----

# extinct_animals.each do |name,date|
#   date += 3
#   extinct_animals[name] = date
# end
# puts "Our extinction dates were off. Here are the new dates: #{extinct_animals}"


# 4. You've heard that the following animals might be extinct, but you're not sure.
# Build a method  using #each that checks if an animal is in the hash and returns true/false.
# Call the method in your driver code with each of the following animals to check if
# they are extinct or not:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Driver code example: is_extinct?(extinct_animals, "Andean Cat")
# ----

# def is_extinct(extinct_animals, animal)
#   extinct_animals.each do |name|
#     if name.include?(animal)
#         puts true
#       else
#         false
#       end
#     end

# end
# is_extinct(extinct_animals,"Andean Cat")
# is_extinct(extinct_animals,"Dodo")
# is_extinct(extinct_animals,"Saiga Antelope")




# def animal_search(list, animal)
#   list.each do |name|
#     if name.include?(animal)
#       puts true
#       puts "the #{animal} is extinct"
#     else
#       puts false
#     end
#   end
# end

# animal_search(extinct_animals,"Andean Cat")
# animal_search(extinct_animals,"Dodo")
# animal_search(extinct_animals,"Saiga Antelope")




# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find a Ruby Hash built-in method that helps you accomplish this or build
# your own method using #each
# ----

not_extinct = []
extinct_animals.each do |name, date|
  if name == "Passenger Pigeon"
  p not_extinct.push(name, date)
    extinct_animals.delete(name)
  end
end
p extinct_animals







# new_array = []
# extinct_animals.each do |name,date|
#   if name == "Passenger Pigeon"
#     p new_array.push(name,date)
#     extinct_animals.delete(name)
#   end
# end
# p extinct_animals