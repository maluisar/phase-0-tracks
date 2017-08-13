//Release 0: Find the Longest Phrase
//
//  1.  Pull the length of each one of the elemnts in the array
//      (either in a new array or an object with length value)
//  2.  Option1*:
//      Find out which index number is the largest
//          2.1. For each number in the lengths array test against
//               all numbers if it's greater or equal than return true.
//          2.2. If true those numbers are the max letters.
//          2.3. Search for their index in the lengths array.
//      Option2:
//      Sort elements based on the length of the word/phrase
//  3.  Option1*:
//      Return value of index
//      Option2:
//      Return first element in the array
//  *used Option1

function createLengthArray(array){
  var lengthArray = [];
  for (var i=0; i < array.length; i++){
    lengthArray.push(array[i].length);
  }
  return lengthArray;
}

function maxNumbers(numberArray){
  var maxArray = [];
  for (var i=0; i < numberArray.length; i++){
    var testingNumber = i;
    var trueArray =[];
    for (var x=0; x < numberArray.length; x++){
      trueArray.push(numberArray[testingNumber] >= numberArray[x]);
    }
    if (!trueArray.includes(false)){
      maxArray.push(i);
    }
    trueArray = 0;
  }
  return maxArray;
}

function returnLongestString(array, indexArray){
  for (var i=0; i < indexArray.length; i++) {
    console.log(array[indexArray[i]]);
  }
}

function printResult(array){
  returnLongestString(array, maxNumbers(createLengthArray(array)));
}

//Driver Code

console.log("Release 0");

var testArray = ["Cow","Eagle","Lion","Dog","Rhino"];
console.log("The longest words in your array are:")
returnLongestString(testArray,maxNumbers(createLengthArray(testArray)));

console.log("-------------------------------------------------")

//Release 1: Find a Key-Value match
//
//  Assumptions based in example:
//  1. The objects are the same length
//  2. Objects have the same keys
//  3. Keys are in the same order
//
//  Stepts
//  1. Create variable to store true or false value
//  2. Iterate through first object comparing index(x) with other
//     object's index(x) if equal asign true to variable
//  3. Return variable = true or false


function keyValueMatch(firstObject, secondObject) {
  var match = false;
    for (i=0; i < Object.keys(firstObject).length; i++) {
      if ((Object.values(firstObject)[i]) == (Object.values(secondObject)[i])){
        match = true;
      }
    }
  return match;
  }

//Driver Code

var pooch1 = {Name: "Scout", Age:5, Color: "black", Adorable: true};
var pooch2 = {Name: "Mila", Age:1, Color: "brown", Adorable: true};

console.log("Repeated values: " + keyValueMatch(pooch1,pooch2));

console.log("-------------------------------------------------")
//Release 2
//
//  1. Create a function to give a random number with a given range
//  2. Create a key-value object with numbers and the letter of the alphabet.
//  3. Create an function that takes a number and creates an array of randome words of that length


function randomize(min,max){
  var randomNumber = Math.floor(Math.random() * (max - min +1)) + min;
  return randomNumber;
}

function randomArray(length) {
  var randomArray = [];
  for (i = 0; i < (length); i++){
    actualWord = "";
    wordLength = randomize(1,10);
    for (x = 0; x < wordLength; x++){
      chosenLetter = randomize(1,26);
      actualWord += alphabet[chosenLetter];
    }
    randomArray.push(actualWord);
  }
  return randomArray;
}

//Driver Code

var alphabet = {1:"a", 2:"b", 3:"c",4:"d",5:"e",6:"f",7:"g",8:"h", 9:"i", 10:"j",11:"k",12:"l",13:"m",14:"n",15:"o", 16:"p", 17:"q",18:"r",19:"s",20:"t",21:"u",22:"v",23:"w",24:"x", 25:"y", 26:"z"};

console.log("The random word array is:")
console.log(randomArray(5));

console.log("-------------------------------------------------")

//Release 2 - Driver code for creating a randome array and finding the longest word(s) in it.

for (y = 0; y < 10; y++) {
  var finalArray = (randomArray(randomize(1,5)));
  console.log("Created array:");
  console.log(finalArray);
  console.log("The longest word(s) in this array:");
  returnLongestString(finalArray,maxNumbers(createLengthArray(finalArray)));
  console.log("-------------------------------------------------")
}