console.log("The script is running!");

function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid pink";
}

function hide(event) {
  event.target.hidden = true;
}

function show(event) {
  var photo = document.getElementById("lizard-photo");
  photo.hidden = false;
}

var ul = document.getElementsByTagName("ul");
ul2 = ul[0]
ul2.style.border = "3px solid blue"

var button = document.getElementsByTagName("button");
button2 = button[0];
button2.addEventListener("click", hide);

var button = document.getElementsByTagName("button");
button3 = button[2];
button3.addEventListener("click", show);

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", hide);
photo.addEventListener("mouseover", addPinkBorder);

var lists = document.getElementsByTagName("li");
for(var i = 0; i < 1; i++){
  lists[i].style.backgroundColor = "yellow";
  lists[i+1].style.backgroundColor = "red";
}