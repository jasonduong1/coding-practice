# Write a function that returns the sum of all numbers in a given array.

# NOTE: Do not use any built-in language functions that do this automatically for you.

# Input: [1, 2, 3, 4]
# Output: 10

# Explanation: (1 + 2 + 3 + 4) = 10

def sum(input)
  output = 0
  input.each { |num| output += num }
  output
end

p sum([1, 2, 3, 4])
