
// returns the sequence of a specific character that appears the most in sequence.
// If there are many sequences like that, return the first longest sequence.
function challenge1(inputString) {
	// keep track of the length and the character of the longest sequence
	var longest_length = -1;
	var longest_char = ' ';

	// keep track of the lenght and the character of thecurrent sequence
	var curr_length = 0;
	var curr_char = ' ';

	// loop over the input string
	for (var i = 0; i < inputString.length; i++) {
		var c = inputString.charAt(i);
		if (c != curr_char) {
			// found a new character
			if (longest_length < curr_length) {
				// current sequence is longer than the longest sequence, so remember it
				longest_char = curr_char;
				longest_length = curr_length;
			}
			// reset current sequence
			curr_char = c;
			curr_length = 1;
		} else {
			// increase the length of the current sequence
			curr_length = curr_length + 1;
			if (longest_length < curr_length) {
				longest_char = curr_char;
				longest_length = curr_length;
			}
		}
	}

	// compose and return the longest sequence
	return longest_char.repeat(longest_length);
}

var inputString = "Pressuuuuuure";

var argv = process.argv.slice(2);
// ensure that we've got the right number of command line arguments
if (argv.length > 1) {
	console.error("Usage: node challenge1.js \"Input string\"");
	return;
} else if (argv.length == 1) {
	inputString = argv[0];
}

// print out the result
console.log(challenge1(inputString));