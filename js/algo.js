// function that takes an array
// words or phrases
//returns the longest word or phrase in array

// var phrases = ["long phrase","longest phrase","longer phrase"]

// function findLongestWord(phrases){
//   //check each phrase by looping
//   var longestWord = ""

//   for(var i = 0; i < phrases.length; i++){
//     if (phrases[i].length > longestWord.length){
//       longestWord = phrases[i]
//     }
//   }
//   return longestWord;
// }

// console.log(findLongestWord(phrases))

// #RELEASE 1
// write a function that takes two objects and its arguments
// should return true if object1 and object2 have at least one of the same key values example: they have the same age

function sharedValue (object1, object2){
  for ( key in object1 ) {
    var current_key = key
    for (key in object2) {
      if (current_key === key) {
        if (object1[key] === object2[current_key]){
          return true
        }
      }
    }
  }
  return false
}

// console.log(sharedValue({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
// console.log(sharedValue({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));



function RandomTest (length) {
  //length is how many words we want in our array
  //should be min of 1 - 10 random letters
  var words = []
  for (var i = 0; i < length; i++){
    // we want to create a random word between 1 - 10 characters long
    var randomWordLength = Math.floor(Math.random() * 10) + 1 // returns word length
    var randomWord = createRandomWord(randomWordLength) // returns random word
    words.push(randomWord)
    //put the random word in the array
  }
  return words;
}

function createRandomWord(num) {
  var text = "";
  var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

  for (var i = 0; i < num; i++)
    text += possible.charAt(Math.floor(Math.random() * possible.length));

  return text;
}
// builds and returns an array of strings of the given lenght

console.log(RandomTest(5));