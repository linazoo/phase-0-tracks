// foward
function countToTen() {
  for(var i = 1 ; i <= 10; i++){
    console.log(i);
  }
}

// countToTen();

// backward
function countToTen() {
  for(var i = 10 ; i >= 0; i--){
    console.log(i);
  }
}

// countToTen();


//function takes a string as a parameter and reverses the string reverse("hello") => "olleh"
//split method to split the string into an array of substrings
//reverse method by moving last to first
//joining


function reverseString(string) {
  //Use the split method to return a new array
  var reverseString = string.split("");
  //splitstring = "hello.split("");
  var reverseArray = splitstring.reverse();
  var joinArray = reverseArray.join("");
  return joinArray;
}
reverseString("hello");


function reverseString(str) {
    return str.split("").reverse().join("");
}
  console.log(reverseString("hello"));

// print the variable if some silly condition is true.

if (reverseString === 1==1) {
  console.log(reverseString);
}
  else {
  console.log('wut?')
}