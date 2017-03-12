// take a variable from user input
// create a function that loops through the word
// as it loops it rebuilds the word from the back to the front
// then the program should return the value
function reverseword(userword) {
	console.log("the original word was:")
	console.log(userword)
	var print = true; 
	var newword = '';
	for (var word = userword.length - 1; word >= 0; word--)
		newword += userword[word];
	 if (print) {console.log ("the new word is:");
	 console.log(newword)}
}

// driver code
var userword = 'brentunkrich';
reverseword (userword);
