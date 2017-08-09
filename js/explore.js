// Loop thorugh the word taking the index backgwards

function reverse(word) {

  var str = word;
  var newString = ""

  for (var i = (str.length-1); i >= 0; i--) {
    newString = (newString + str[i]);}

return newString;
}

function print(word){

if (word < 3) {
  console.log(word);
} else {
  console.log(reverse(word));
}
}

//Driver Code

var inputName = "Maria Luisa";
print(inputName);






