package main

import (
	"fmt"
	"os"
	"strconv"
)

// Given a set of numbers, find the subset in which the sum of the elements is the maximum sum.
func challenge2(values []int) (int, int) {
	// intitialize total max with the first element
	total_max := values[0]
	total_start := 0
	total_end := 0
	// intitialize current max with the first element
	curr_max := values[0]
	curr_start := 0
	curr_end := 0

	// starting with the second element of the array find the best sequence
	for i := 1; i < len(values); i++ {
		curr_end = i

		x := curr_max + values[i]
		if x < values[i] {
			// if the extension makes the max smaller, then start the sequence from here
			curr_start = curr_end
			curr_max = values[i]
		} else {
			// extend the sequence
			curr_max = x
		}

		// remember the current total max
		if curr_max > total_max {
			total_max = curr_max
			total_start = curr_start
			total_end = curr_end
		}
	}

	return total_start, total_end
}

func main() {
	argv := os.Args[1:]

	values := []int{2, -4, 6, 8, -10, 100, -6, -5}
	if len(argv) > 0 {
		values = []int{}
		for i := range argv {
			n, err := strconv.Atoi(argv[i])
			if err != nil {
				fmt.Println("Invalid value '", argv[i], "' at position ", i)
				panic(err)
			}
			values = append(values, n)
		}
	}

	//fmt.Println(values)

	fmt.Println(challenge2(values))
}
