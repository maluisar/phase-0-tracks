//Release 0: Find the Longest Phrase
//
//  1.  Pull the length of each one of the elemnts in the array
//      (either in a new array or an object with length value)
//  2.  Option1*:
//      Find out which index number is the largest
//          2.1. For each number in the lengths array test against
//               all numbers if it greater or equal than return true.
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
  lengthArray = []
  for (i=0; i < array.length; i++){
    lengthArray.push(array[i]);
  }
}
