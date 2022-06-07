# Write a function that returns the greatest value from an array of numbers.

# Input: [5, 17, -4, 20, 12]
# Output: 20

def max(input)
  current_max = input[0]
  index = 1
  while index < input.length
    if current_max < input[index]
      current_max = input[index]
    end
    index += 1
  end
  current_max
end

p max([5, 17, -4, 20, 12])
