/*
PSEUDOCODE FOR RELEASE 0
1. Create a new variable that takes an array of phrases
2. Create a function that takes an array as a parameter and loops through the array 
3. Create a longestWord variable as a comparer to start with 
4. Use control flow to determine which word is longer than the initial word 
5. Reset the value of the longestWord variable to include the longest in the array
6. Return the longestWord variable
4. Call the function 
*/


var myArray = ["long phrase","longest phrase","longer phrase", "longestestestest phrase"];
var anotherArray = ['peanut butter', 'jelly', 'whole wheat bread'];

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
console.log(longestPhrase(anotherArray));
