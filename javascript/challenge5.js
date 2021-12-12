// symmetric difference between two arrays
// given the constraints of n,m <= 100, this simple O(n^2) algorithm is good enough
// does not guarantee any order of the values in the resulting array
function challenge5(array1, array2) {
	var result = [];

	for (var i = 0; i < array1.length; i++) {
		var v = array1[i];
		if (!array2.includes(v)) {
			result.push(v);
		}
	}
	for (var i = 0; i < array2.length; i++) {
		var v = array2[i];
		if (!array1.includes(v)) {
			result.push(v);
		}
	}

	return result;
}

// symmetric difference between two arrays
// a more sophisticated O(n) algorithm which uses more memory
// does not guarantee any order of the values in the resulting array
function challenge5_map(array1, array2) {
	var result = [];

	var mi = new Map();

	// put all values of array1 into map
	for (var i = 0; i < array1.length; i++) {
		var v = array1[i];
		mi.set(v, true);
	}

	// loop over array2: if the map already contains the value from array2
	// then it needs to be removed from the map, otherwise added
	for (var i = 0; i < array2.length; i++) {
		var v = array2[i];
		if (mi.get(v)) {
			mi.delete(v);
		} else {
			mi.set(v, true);
		}
	}

	return Array.from(mi.keys());
}

	// print out the result
console.log(challenge5([1, 2, 3], [3, 4]));

console.log(challenge5_map([1, 2, 3], [3, 4]));