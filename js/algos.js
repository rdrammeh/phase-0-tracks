 
 // ---- RELEASE 0 ---- ///
 
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
 
 // ---- RELEASE 1 ---- ///
 
 /*
 PSEUDOCODE FOR RELEASE 1
 1. Create variables with key-value pairs 
 2. Assign the objects keys into two separate variables 
 3. Create a function that takes both two Objects as a parameter and loops through the Objects keys  
 4. Use control flow to return true if two key value are the same using their index  
 5. Call the function using different examples
 */
 
 var myInfo = {name: 'Rakey', age: 24};
 var friendInfo = {name: 'Liz', age: 30};
 var randomPerson = {name: 'Sara', age: 24}
 
 function keyValueMatch(array1, array2) {
   var keys1 = Object.keys(array1);
   var keys2 = Object.keys(array2);
   var shareValue = true
   for (var i = 0; i < keys1.length; i++) {
       if (array1[keys1[i]] === array2[keys2[i]]) {
         shareValue = true
       } else {
         shareValue = false
       }
   }
   return shareValue
 }
 
 
 console.log(keyValueMatch(myInfo, friendInfo));
 console.log(keyValueMatch(myInfo, randomPerson));
 console.log(keyValueMatch(friendInfo, randomPerson));
 

// ---- RELEASE 2 ---- ///

/*
PSEUDOCODE FOR RELEASE 2
1. Create a function that takes a number as a parameter 
2. Create an empty array within the function 
3. Create an alphabet variable 
4. Depending on how many words user wants to create a loop 
5. Set the random word to an empty string
6. For each word get a random length of letters up to 10 letters
7. Loop through the random word length to assign it a random letter
8. The word will now be random characters in the alphabet 
9. Add that new word to the array 
10. Return the array of words 
*/

function randomWords(number) {
  var word_array = [];
  var alphabet = 'abcdefghijklmnopqrstuvwxyz';
  for (var i = 0; i < number; i++) {
    var word = "";
    var word_length = (Math.floor(Math.random() * 10));
    for (var j = 0; j < word_length; j++) {
      var random_letters = (Math.random() * alphabet.length);
      word += alphabet.charAt(random_letters);
    }
    word_array.push(word);
  }
  return word_array;
}

console.log(randomWords(4));



