# Given an array of numbers, return a new array containing just two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.

# Specifically use nested loops to solve this exercise even though there are other approaches as well.

# Input: [2, 5, 3, 1, 0, 7, 11]
# Output: [3, 7]

# Input: [1, 2, 3, 4, 5]
# Output: false (While 1, 2, 3, and 4 altogether add up to 10, we're seeking just one pair of numbers.)

def sumof10(arr)
  index = 0
  output = []
  while index < arr.length
    index2 = index + 1
    while index2 < arr.length
      if arr[index] + arr[index2] == 10
        output.push(arr[index], arr[index2])
        return output
      else
        index2 += 1
      end
    end
    index += 1
  end
  return false if output == []
end

p sumof10([2, 5, 3, 1, 0, 7, 11])
p sumof10([1, 2, 3, 4, 5])
