// access the array from outside
// iterate through the array looking for the longest string
// asign a new variable to be that longest string

function findLongestWord(wordArray) {
	var longestWord = wordArray.sort(function(a, b) {return b.length - a.length; });
	return longestWord[0];
}

// start with a blank array
var values = [];
// first function pulls in all the info and sends it to the compaire function
function compaireBoth(key1, value1, key2, value2) {
	  //console.log (values);
	  compaire2(value1);
	  compaire2(value2);
}

// takes in the value and finds the index, if it hasn't been used it will be -1 and will not do anything
// it then adds the new value to the array	  
function compaire2(value) {
	   a = values.indexOf(value);
    values.push(value);
    if (a >= 0) {
      console.log (value);
      console.log ("It's a match!");
    }
}


function randomizerCount() {
	var x = Math.floor((Math.random() * 10) + 1);
	console.log (x);
}

function randomizerWord() {
	var newword = [];
	var alph = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
	var xlength = Math.floor((Math.random() * 20) + 1);
	
	for (var i = 0; i < xlength; i++){
		var xalpha = Math.floor(Math.random() * 26);
		var letter = alph[xalpha];
		// console.log (letter);
		newword.push(letter);
		//console.log(newword);
	}
	var b = (newword.toString());
  var c = (b.replace(/,/g,""));
  console.log(c);
}



var a = randomizerWord();



// ----- DRIVER CODE (Release 1) -----
compaireBoth('name:', 'steven', 'age:', 7);
compaireBoth('name:', 'steven', 'age:', 10);
compaireBoth('name:', 'steven', 'age:', 7);
compaireBoth('name:', 'Jenny', 'age:', 8);
compaireBoth('name:', 'Greg', 'age:', 9);
compaireBoth('name:', 'Jenny', 'age:', 10);


// ----- DRIVER CODE (Release 0) -----
//wordArray = ['brent','lee','unkrichfdfdfdfddf','not','gooosegoose'];
//findLongestWord(wordArray);

// function that will compaire if 2 objects have anything in common