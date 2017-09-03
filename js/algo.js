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
            true
          }
        }
      }
    }
}

sharedValue({name: "Steven", age: 54}, {name: "Tamir", age: 54}); //  true
// sharedValue({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}); // true