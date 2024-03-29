# Write a function that accepts an array of numbers and returns the product of all the numbers.

# Input: [1, 2, 3, 4]
# Output: 24

# Explanation: (1 x 2 x 3 x 4) = 24

# p [1, 2, 3, 4].reduce(1) { |product, num| product * num }
# p [1, 2, 3, 4].reduce(:*)

def product(input)
  product = 1
  input.each { |num| product *= num }
  product
end

p product([1, 2, 3, 4])
