puts "what is the hamsters name?"
name = gets.chomp
puts "on a scale of 1 to 10 how loud is your hamster?"
loudness = gets.chomp.to_i
puts "what is the fur color of the hamster"
color = gets.chomp
puts "good adoption candidate? (y/n)"
input = gets.chomp
  if input == "yes"
    adoption = true
  else
    adoption = false
  end
puts "estimated age?"
number = gets.chomp
  if number == ''
    number = nil
  else
    number = number.to_i
  end

puts "your hamster's name is #{name}, on a scale of 1 to 10 it's a #{loudness}. The color of it's fur is #{color}, beautiful!"

if adoption == true
  puts "your hamster would be great for adoption!"
else adoption == false
  puts "your hamster doesn't seem to be a good candidate for adoption :/"
end