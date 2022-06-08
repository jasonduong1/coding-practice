# Given an array, write a function that returns an array that contains the original array’s values in reverse.

# Input: [1, 2, 3, 4, 5]
# Output: [5, 4, 3, 2, 1]

def reverse(input)
  # output = []
  # index = input.length - 1
  # while index > -1
  #   output << input[index]
  #   index -= 1
  # end
  # output
  input.reverse!
end

p reverse([1, 2, 3, 4, 5])
