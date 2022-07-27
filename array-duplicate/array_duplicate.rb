# A given array has one pair of duplicate values. Return the first duplicate value.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: [5, 2, 9, 7, 2, 6]
# Output: 2

def duplicate?(array)
  hash = {}
  # array.each do |number|
  #   if hash[number]
  #     return number
  #   else
  #     hash[number] = true
  #   end
  # end
  array.each { |number| hash[number] ? (return number) : hash[number] = 1 }
end

p duplicate?([5, 2, 9, 7, 2, 6])
p duplicate?([5, 2, 9, 7, 3, 6, 1, 1])
