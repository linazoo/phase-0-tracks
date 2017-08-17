# Enter your clients details
#(name, age, number of children, decor theme)

puts "Hello! Lets gather your information: first, are you a designer or a client?"
  user_type = gets.chomp

puts "What is your name?"
  name = gets.chomp


puts "What year were you born?"
  birthdate = gets.chomp

puts "How many children do you have?"
  number_of_kids = gets.chomp

puts "Favorite decor theme: "
  decor_theme = gets.chomp

# Convert any user input to the appropriate data type.

user_info = {
  :user_type => "#{user_type}",
  :name => "#{name}",
  :birthdate => "#{birthdate}",
  :number_of_kids => "#{number_of_kids}",
  :decor_theme => "#{decor_theme}",
}

# give the user the chance to update a key if 'none' then skip

puts "Great! Here is all the information we have gathered."
p "You are a ": user_info [:user_type]
p "Name": user_info[:name]
p "Birthday ": user_info[:birthdate]
p "You have ": user_info[:number_of_kids] + " children"
p "And your favorite decor theme is ": user_info[:decor_theme]

puts "If you want to make changes type 'y' otherwise type 'd' if you're done"
  changes = gets.chomp

if changes == "y"
  puts "What information would you like the change?"
  changes_wanted = gets.chomp.to_sym
  puts "What would you like to change #{changes_wanted} to?"
  change_value = gets.chomp
  user_info[changes_wanted] = change_value
  puts "We have updated your #{changes_wanted} to #{user_info[changes_wanted]}"
else changes == 'd'
end

#print the hash back out to the screen when the designer has answered all of the questions

p "You are a ": user_info [:user_type]
p "Name": user_info[:name]
p "Birthday ": user_info[:birthdate]
p "You have ": user_info[:number_of_kids] + " children"
p "And your favorite decor theme is ": user_info[:decor_theme]

#print the latest version of the hash and exit the program.
p user_info3