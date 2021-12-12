// Given a set of numbers, find the subset in which the sum of the elements is the maximum sum.
function challenge2(values) {
	// intitialize total max with the first element
	var total_max = values[0];
	var total_start = 0;
	var total_end = 0;
	// intitialize current max with the first element
	var curr_max = values[0];
	var curr_start = 0;
	var curr_end = 0;

	// starting with the second element of the array find the best sequence
	for (var i = 1; i < values.length; i++) {
		curr_end = i;

		var x = curr_max + values[i];
		if (x < values[i]) {
			// if the extension makes the max smaller, then start the sequence from here
			curr_start = curr_end;
			curr_max = values[i];
		} else {
			// extend the sequence
			curr_max = x;
		}

		// remember the current total max
		if (curr_max > total_max) {
			total_max = curr_max;
			total_start = curr_start;
			total_end = curr_end;
		}
	}

	return [total_start, total_end]
}

var values = [2, -4, 6, 8, -10, 100, -6, -5];

var argv = process.argv.slice(2);

if (argv.length > 0) {
	values = [];
	for (var i = 0; i < argv.length; i++) {
		n = parseInt(argv[i], 10)
		values.push(n)
	}
}

//console.log(values);

result = challenge2(values);
console.log(result[0] + " " + result[1]);
