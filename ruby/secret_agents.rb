#Ask the secret agent (user) whether they would like to decrypt or encrypt a password

#if they say encrypt
#aks "what word would you like to encrypt?"
#Get the word from user
#call the encrypt method and pass the word the user gave us
#return the encrypted string


#if they say decrypt do this
#aks "what word would you like to decrypt?"
#Get the word from user
#call the decrypt method and pass the word the user gave us
#return the decrypted string

#PSEUDO CODE FOR ENCRYPT method
#Set the index to start at 0 which references the first character of the string
#We start our loop saying while the index is less than the word lenght perform the following loop
#we scan the word according to what the i equals to and call the .next method to incriment each letter.
#The loop will continue until we run out of letters to set "i" to
#we return the word encrypted!


def encrypt (word)
  i = 0
  while i < word.length
    word[i] = word[i].next
    i += 1
  end
  return word
end

#decrypted word loop
#everytime the encrypted word goes into the loop
#we will figure out the position (index) in the key (in this case the alphabet)
#the index of the ltter we're looking for is stored in the 'position' variable
#BUT the index is the encrypted position but we know its the letter before - so we have to subtract one from the 'position variable'

# word [0] == "k"


def decrypt (word)
  i = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while i < word.length
    position = alphabet.index(word[i])
    decrypted_letter = alphabet[position -1]
    word[i] = decrypted_letter
    i += 1
  end
  return word
end

puts "encrypt or decrypt?"
answer = gets.chomp
if answer == "encrypt"
  puts "What word would you like to encrypt?"
  word = gets.chomp
  puts encrypt (word)
else
  puts "What would would you like to decrypt?"
  word = gets.chomp
  puts decrypt (word)
end
