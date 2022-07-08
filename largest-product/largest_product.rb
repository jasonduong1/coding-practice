# Find the largest product of any two numbers within a given array.

# Input: [5, -2, 1, -9, -7, 2, 6]
# Output: 63 (-9 * -7)

def product(arr)
  index = 0
  arr.length == 2 ? output = arr[0] * arr[1] : output = 0
  while index < arr.length
    index2 = index + 1
    while index2 < arr.length
      current_product = arr[index] * arr[index2]
      output = current_product if current_product > output
      index2 += 1
    end
    index += 1
  end
  output
end

p product([5, -2, 1, -9, -7, 2, 6])
p product([-1, 1])
p product([0, 5])
p product([-1, 5, -1])
