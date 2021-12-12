package main

import (
	"fmt"
)

// symmetric difference between two arrays
// given the constraints of n,m <= 100, this simple O(n^2) algorithm is good enough
// does not guarantee any order of the values in the resulting array
func challenge5(array1 []int, array2 []int) []int {
	var result = []int{}

	for _, v := range array1 {
		if !contains(v, array2) {
			result = append(result, v)
		}
	}
	for _, v := range array2 {
		if !contains(v, array1) {
			result = append(result, v)
		}
	}

	return result
}

// symmetric difference between two arrays
// a more sophisticated O(n) algorithm which uses more memory
// does not guarantee any order of the values in the resulting array
func challenge5_map(array1 []int, array2 []int) []int {
	var result = []int{}

	mi := make(map[int]bool)

	// put all values of array1 into map
	for _, v := range array1 {
		mi[v] = true
	}

	// loop over array2: if the map already contains the value from array2
	// then it needs to be removed from the map, otherwise added
	for _, v := range array2 {
		if mi[v] {
			delete(mi, v)
		} else {
			mi[v] = true
		}
	}

	// collect the map into an array
	for k := range mi {
		result = append(result, k)
	}

	return result
}

func contains(v int, array []int) bool {
	for i := 0; i < len(array); i++ {
		if array[i] == v {
			return true
		}
	}
	return false
}
func main() {
	// print out the result
	fmt.Println(challenge5([]int{1, 2, 3}, []int{3, 4}))

	fmt.Println(challenge5_map([]int{1, 2, 3}, []int{3, 4}))
}
