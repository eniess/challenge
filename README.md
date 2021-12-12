# Challenge

## How to run

Prerequisites: clone this git repository and navigate into the folder with the source code.

### Challenge 1

To execute this challenge, run one of the following commands from the command line:

    ruby ruby/lib/challenge1.rb 
    go run go/challange1.go
    node javascript/challange1.js

Prints out: 'uuuuuu' (Default string is Pressuuuuure)

To use a different input string, provide it as command line argument:

    ruby ruby/lib/challenge1.rb "A hot   dog"
    go run go/challange1.go "A hot   dog"
    node javascript/challange1.js "A hot   dog"

Prints out: '   ' (3 blanks)

### Challenge 2

To execute this challenge, run one of the following commands from the command line:

    ruby ruby/lib/challenge2.rb 
    go run go/challenge2.rb 
    node javascript/challange2.js

Prints out: 2 5 (Default set of elements is [2, -4, 6, 8, -10, 100, -6, -5])

To use a different set of numbers, provide them as command line arguments:

    ruby ruby/lib/challenge2.rb 2 4 6 8 -10 100 -6 5
    go run go/challenge2.go 2 4 6 8 -10 100 -6 5
    node javascript/challange2.js 2 4 6 8 -10 100 -6 5

Prints out: 0 5

### Challenge 3

To execute this challenge, run one of the following commands from the command line:

    ruby ruby/lib/challenge3.rb
    go run go/challenge3.go
    node javascript/challange3.js

Prints out: 5 (Default input string is "Hello World")

To use a different input string, provide it as command line argument:

    ruby ruby/lib/challenge3.rb " fly me   to   the moon    "
    go run go/challenge3.go " fly me   to   the moon    "
    node javascript/challange3.js " fly me   to   the moon    "

Prints out: 4


### Challenge 4

To execute this challenge, run the following command from the command line:

    ruby ruby/lib/challenge4.rb 

Prints out: a number of questions for the PM

There is only a ruby version as the code is quite boring anyway.

### Challenge 5

To execute this challenge, run one of the following commands from the command line:

    ruby ruby/lib/challenge5.rb 
    go run go/challenge5.go
    node javascript/challange5.js

Prints out: \[1, 2, 4\] (calculating symmetric difference between \[1, 2, 3\] and the set \[3, 4\])

For simplicity reasons, this implementation does not allow providing sets with numbers from command line.