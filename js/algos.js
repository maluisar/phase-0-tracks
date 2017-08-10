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

var testArray = ["Short","Medium Length","The Longest Phrase of all","This Long Phrase"];
returnLongestString(testArray,maxNumbers(createLengthArray(testArray)));

