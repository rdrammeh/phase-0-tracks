/*
PSEUDOCODE FOR RELEASE 0
1. Create a new variable that takes an array of phrases
2. Create a function that loops through the array 
3. Use control flow to determine which word is the longest using .length
4. Call the function 
*/


var myArray = ["long phrase","longest phrase","longer phrase", "longestestestest phrase"];

function longestPhrase() {
  for (var i = 0; i < myArray.length; i++) {
    if (myArray[i].length > myArray[i++].length) {
      return myArray[i];
    } else {
      return myArray[i++];
    }
  }
}

console.log(longestPhrase());