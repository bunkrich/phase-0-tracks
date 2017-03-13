
// function to create a random word by generating a random number
// then grabbing random letters to fill that word
// exports a random word of random letters
var wordArray = [];
//blank array to hold all the random words
function magicNumber() {
		var x = Math.floor((Math.random() * 10) + 1);
		for (var i = 0; i < x; i++){
			var word = randomizerWord();
			wordArray.push(word);
		}
		console.log(wordArray);
}

function randomizerWord() {
	// blank array to store the new word
	var newword = [];
	// array filled with the alphabet to pull the letters for the random word
	var alph = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
	// random number between 1 and 10 to dictate the length of the "word"
	var xlength = Math.floor((Math.random() * 10) + 1);
	// loop that counts up to the length to fill the new word with a random letter
	for (var i = 0; i < xlength; i++){
		var xalpha = Math.floor(Math.random() * 26);
		var letter = alph[xalpha];
		// console.log (letter);
		newword.push(letter);
		//console.log(newword);
	}
	// greate a string from the array
	var b = (newword.toString());
	//delete all the commas and leave us with a random word
  	var c = (b.replace(/,/g,""));
  	//return the final word out of the function
	return(c)
}


// ----- DRIVER CODE -----//
var a = magicNumber();

                