# Given two arrays, return a new array that contains the intersection of the two arrays. The intersection means the values that are contained in both of the arrays. Do not use the "&", or any built-in intersection methods.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: [1, 2, 3, 4, 5], [1, 3, 5, 7, 9]
# Output: [1, 3, 5]

def intersect(array1, array2)
  hash = {}
  new_array = []
  array1.each { |number| hash[number] = true }
  array2.each { |number| new_array << number if hash[number] }
  new_array
end

p intersect([1, 2, 3, 4, 5], [1, 3, 5, 7, 9])
