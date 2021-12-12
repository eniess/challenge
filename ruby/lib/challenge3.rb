# return the length of the last word in the string
# assumption is that the input string is not too long
def challenge3(inputString)
  words = inputString.strip.split(' ')

  words[-1].length
end

if __FILE__ == $0
  # ensure that we've got the right number of command line arguments
  if ARGV.length == 0
    input_string = "Hello World"
  elsif ARGV.length == 1
    input_string = ARGV[0]
  else
    puts "Usage: ruby challenge3.rb \"Input string\""
    exit 1
  end
  
  # print out the result
  puts "#{challenge3(input_string)}"
end
