# Given an array of numbers, write a function that returns a new array that contains all numbers from the original array that are less than 100.

# Input: [99, 101, 88, 4, 2000, 50]
# Output: [99, 88, 4, 50]

def lessthan100(input)
  output = []
  input.each do |num|
    if num < 100
      output << num
    end
  end
  return output
end

p lessthan100([99, 101, 88, 4, 2000, 50])
