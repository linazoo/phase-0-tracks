// function that takes an array
// words or phrases
//returns the longest word or phrase in array

var phrases = ["long phrase","longest phrase","longer phrase"]

function findLongestWord(phrases){
  //check each phrase by looping
  var longestWord = ""

  for(var i = 0; i < phrases.length; i++){
    if (phrases[i].length > longestWord.length){
      longestWord = phrases[i]
    }
  }
  return longestWord;
}

console.log(findLongestWord(phrases))


function sharedValue (key, value){
// check to see if the objects share at least one key-value pair

}

yourFunction({name: "Steven", age: 54}, {name: "Tamir", age: 54}); #  true
yourFunction({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}); #  true