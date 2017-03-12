// access the array from outside
// iterate through the array looking for the longest string
// asign a new variable to be that longest string

function findLongestWord(wordArray) {
	var longestWord = wordArray.sort(function(a, b) {return b.length - a.length; });
	return longestWord[0];
}

wordArray = ['brent','lee','unkrichfdfdfdfddf','not','gooosegoose'];
findLongestWord(wordArray);