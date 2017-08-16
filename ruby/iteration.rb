def give_treat
  puts "Good doggie! here's a treat"
  yield("butters", "emma")
end

give_treat {|butters, emma| puts "Now sit #{butters} and #{emma}"}

# .EACH
letters = ["a", "b", "c", "d", "e"]
new_letters = []

puts "original data:"
p letters

#iterate through the array with .each
letters.each do |letter|
  new_letters << letter.next
end

puts "after .each call:"
p letters
p new_letters

numbers = {1=> 'one', 2=> 'two', 3=> 'three'}

numbers.each do |digit, word|
  puts "#{digit} is spelled out as #{word}"

end

# .MAP
letters = ["a", "b", "c", "d", "e"]

puts "original data:"
p letters

#iterate through the array with .map
letters.map do |letter|
 puts letter
 letter.next
end

puts "after .map call:"
p letters
###################################
fruits = ["apples", "oranges", "peaches", "strawberries"]
new_fruit = []

fruits.each do |fruits|
  puts fruits
  new_fruit << fruits.upcase
end

p new_fruit

fruits = ["apples", "oranges", "peaches", "strawberries"]
puts "original data:"
p fruits

fruits.map! do |fruits|
  puts fruits.upcase
end


domains = {
  "de" => "Germany",
  "sk" => "Slovakia",
  "hu" => "Hungary",
  "us" => "United States",
  "no" => "Norway"
  }

domains.each do |domain, country|
  puts domain.reverse
  puts country.reverse
end

# Array
numbers = [1, 2, 3, 4, 5, 6]
numbers.delete_if {|number| number < 5}
puts numbers

numbers = {
  "one" => 1,
  "two" => 2,
  "three" => 3,
  "four" => 4,
  "five" => 5,
  "six" => 6,
}

numbers.delete_if {|key, value| value > 5}
puts numbers

# KEEP IF

numbers = [1, 2, 3, 4, 5, 6]
numbers.keep_if {|number| number < 5}
puts numbers

numbers = {
  "one" => 1,
  "two" => 2,
  "three" => 3,
  "four" => 4,
  "five" => 5,
  "six" => 6,
}

numbers.keep_if{|key, value| value >5}
puts numbers

# .SELECT
numbers = [1, 2, 3, 4, 5, 6]
result = numbers.select do |number| number < 5
end

puts result


numbers = {
  "one" => 1,
  "two" => 2,
  "three" => 3,
  "four" => 4,
  "five" => 5,
  "six" => 6,
}

result = numbers.select {|key, value| value > 5}

puts result

numbers = [1, 2, 3, 4, 5, 6]
result = numbers.drop_while do |number| number < 5
end

puts result