# Given two arrays, determine whether one is a subset of the other. It is considered a subset if all the values in one array are contained within the other.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 2]
# Output: true

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 7]
# Output: false

def subset?(array1, array2)
  hash = {}
  array1.each { |number| hash[number] = true }
  array2.each { |number| return false if hash[number] != true }
  true
end

p subset?([1, 2, 3, 4, 5, 6], [6, 3, 2])
p subset?([1, 2, 3, 4, 5, 6], [6, 3, 7])
p subset?([1, 2, 3, 4, 5, 6], [1, 2, 0])
p subset?([1], [1])
