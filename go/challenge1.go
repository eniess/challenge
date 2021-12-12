package main

import (
	"fmt"
	"os"
	"strings"
)

// returns the sequence of a specific character that appears the most in sequence.
// If there are many sequences like that, return the first longest sequence.
func challenge1(inputString string) string {
	// keep track of the length and the character of the longest sequence
	longest_length := -1
	longest_char := ' '

	// keep track of the lenght and the character of thecurrent sequence
	curr_length := 0
	curr_char := ' '

	// loop over the input string
	for _, c := range inputString {
		if c != curr_char {
			// found a new character
			if longest_length < curr_length {
				// current sequence is longer than the longest sequence, so remember it
				longest_char = curr_char
				longest_length = curr_length
			}
			// reset current sequence
			curr_char = c
			curr_length = 1
		} else {
			// increase the length of the current sequence
			curr_length = curr_length + 1
			if longest_length < curr_length {
				longest_char = curr_char
				longest_length = curr_length
			}
		}
	}

	// compose and return the longest sequence
	return strings.Repeat(string(longest_char), longest_length)
}

func main() {
	var inputString string

	argv := os.Args[1:]

	// ensure that we've got the right number of command line arguments
	if len(argv) == 0 {
		inputString = "Pressuuuuuure"
	} else if len(argv) == 1 {
		inputString = argv[0]
	} else {
		fmt.Println("Usage: ruby challenge1.rb \"Input string\"")
		os.Exit(1)
	}

	// print out the result
	fmt.Println(challenge1(inputString))
}
