/*
PSEUDOCODE FOR RELEASE 0
1. Create a new variable that takes an array of phrases
2. Create a function that loops through the array 
3. Use control flow to determine which word is the longest using .length
4. Call the function 
*/


var myArray = ["long phrase","longest phrase","longer phrase", "longestestestest phrase"];

function longestPhrase(array) {
  var longestWord = array[0]
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > longestWord.length) {
      longestWord = array[i];
    }
  }
  return longestWord
}

console.log(longestPhrase(myArray));
