# returns the sequence of a specific character that appears the most in sequence. 
# If there are many sequences like that, return the first longest sequence.
def challenge1(inputString)
  # keep track of the length and the character of the longest sequence
  longest_length = -1
  longest_char = ''

  # keep track of the lenght and the character of thecurrent sequence
  curr_length = 0
  curr_char = ''

  # loop over the input string
  inputString.split('').each { |c|
    if c != curr_char
      # found a new character
      if longest_length < curr_length
          # current sequence is longer than the longest sequence, so remember it
          longest_char = curr_char
          longest_length = curr_length
      end
      # reset current sequence
      curr_char = c
      curr_length = 1
    else
      # increase the length of the current sequence
      curr_length = curr_length + 1
      if longest_length < curr_length
        longest_char = curr_char
        longest_length = curr_length
      end
    end
  }

  # compose and return the longest sequence
  longest_char * longest_length
end

if __FILE__ == $0
  # ensure that we've got the right number of command line arguments
  if ARGV.length == 0
    inputString = "Pressuuuuuure"
  elsif ARGV.length == 1
    inputString = ARGV[0]
  else
    puts "Usage: ruby challenge1.rb \"Input string\""
    exit 1
  end

  # print out the result
  # puts "Processing input string '#{inputString}'"
  puts "'#{challenge1(inputString)}'"
end
