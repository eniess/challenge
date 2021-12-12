package main

import (
	"fmt"
	"os"
	"strings"
)

// return the length of the last word in the string
// assumption is that the input string is not too long
func challenge3(inputString string) int {
	words := strings.Split(strings.TrimRight(inputString, " "), " ")

	return len(words[len(words)-1])
}

func main() {
	var inputString string

	argv := os.Args[1:]

	// ensure that we've got the right number of command line arguments
	if len(argv) == 0 {
		inputString = "Hello World"
	} else if len(argv) == 1 {
		inputString = argv[0]
	} else {
		fmt.Println("Usage: ruby challenge3.rb \"Input string\"")
		os.Exit(1)
	}

	// print out the result
	fmt.Println(challenge3(inputString))
}
