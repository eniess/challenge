# Given a set of numbers, find the subset in which the sum of the elements is the maximum sum.
def challenge2(values)
  # intitialize total max with the first element
  total_max = values[0]
  total_start = total_end = 0
  # intitialize current max with the first element
  curr_max = values[0]
  curr_start = curr_end = 0

  # starting with the second element of the array find the best sequence
  for i in 1..values.length-1
    curr_end = i

    x = curr_max + values[i]
    if x < values[i]
      # if the extension makes the max smaller, then start the sequence from here
      curr_start = curr_end
      curr_max = values[i]
    else
      # extend the sequence
      curr_max = x
    end

    # remember the current total max
    if curr_max > total_max
      total_max = curr_max
      total_start = curr_start
      total_end = curr_end
    end
  end

  [total_start, total_end]
end

if __FILE__ == $0
  values = [2, -4, 6, 8, -10, 100, -6, -5]
  if ARGV.length > 0
    values = []
    ARGV.each { |a|
      n = a.to_i
      values << n
    }
  end

  #puts "Processing array #{values}"
  (r_start, r_end) = challenge2(values)
  puts "#{r_start} #{r_end}"
end
