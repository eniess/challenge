// return the length of the last word in the string
// assumption is that the input string is not too long
function challenge3(inputString) {
	var words = inputString.trimEnd().split(" ");

	return words[words.length-1].length;
}

var inputString = "Hello World";

var argv = process.argv.slice(2);
// ensure that we've got the right number of command line arguments
if (argv.length > 1) {
	console.error("Usage: node challenge3.rb \"Input string\"");
	return;
} else if (argv.length == 1) {
	inputString = argv[0];
}

// print out the result
console.log(challenge3(inputString));