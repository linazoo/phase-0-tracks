

puts "how many people do we have today?"
num = gets.chomp.to_i


def run_program
  puts "What is your name?"
# Some known vampires are in the area, and we can check against the Werewolf Intelligence Bureau database for their aliases.
  name = gets.chomp

  puts "How old are you?"
# This is to try to trick the vampire, who is likely several hundreds of years old. If an employee gives an age and a year of birth that don’t line up mathematically, that employee might be a vampire.
  age = gets.chomp.to_i

  puts "What year were you born?"
  year_of_birth = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
# Vampires hate garlic. Do not even get a vampire started on garlic. Invite a vampire to an Italian restaurant even one time, and you’ll never hear the end of it.
  likes_garlic = gets.chomp

  puts "Would you like to enroll in the company’s health insurance? (yes/no)"
# Vampires are immortal, so they certainly don’t need health insurance.
  health_insurance_answer = gets.chomp

  #Get current year (2017) and subtract year given by user to get their correct age.

  age_is_correct = check_age(age, year_of_birth)
  eats_garlic = garlic_eater?(likes_garlic)
  enroll_insurace = wants_insurance?(health_insurance_answer)

  #If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”

  if name == "Drake Cula" || name == "Tu Fang"
    puts "Definitely a vampire"
  elsif (age_is_correct && eats_garlic) || enroll_insurace
    puts "is Probably not a vampire"
  elsif (!age_is_correct && !eats_garlic) || !enroll_insurace
    puts "Probably a vampire"
  elsif (!age_is_correct && !eats_garlic && !enroll_insurace)
    puts "Almost certainly a vampire"
  else
    puts "results inconclusive"
  end
end

def check_age(age, year_of_birth)
  current_year = Time.new.year
  correct_age = current_year - year_of_birth
#If correct age doesnt match current-year subtracted by year of birth then return False. IF they do match return True.
  if correct_age == age
    true

  else
    false
  end
end

def garlic_eater? (likes_garlic)
  if likes_garlic == "yes"
    true
  else
    false
  end
end

def wants_insurance?(answer)
  if answer == "yes"
    true
  else
    false
  end
end

i = 0
while i < num  do
  run_program()
   i +=1
end

puts "Please list your allergies, type 'DONE' when finished"
answer = gets.chomp
while (answer !="DONE")  do
  if answer == "sunshine"
    puts "Probably a vampire"
    break
  else
    puts "Great thanks, enter another allergy"
    answer = gets.chomp
  end
end

puts "Thank you for your allergies!"

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
