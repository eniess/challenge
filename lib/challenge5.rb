# symmetric difference between two arrays
# given the constraints of n,m <= 100, this simple algorithm is good enough
def challenge5(array1, array2)
  array1 - array2 | array2 - array1
end

if __FILE__ == $0
  # print out the result
  puts "#{challenge5([1,2,3], [3,4])}"
end
