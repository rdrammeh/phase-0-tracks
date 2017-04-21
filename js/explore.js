// PSEUDOCODE // 
// 1. Separate the word by letter and store as an array in a new variable
// 2. Use the reverse method on that array and store that in a new variable 
// 3. Put the letter back together to show the final word

function reverse(word) {
  var word_arr = word.split('');
  var reversed_arr = word_arr.reverse();
  var new_word = reversed_arr.join('');
  console.log(new_word);
}

// Reverse a word
reverse("hello");
reverse("javascript");

// Print the variable if some condition is true 
if (1 == 1) {
  reverse("willywonka");
} else {
  console.log("Ohhhhh Javascript!")
}
