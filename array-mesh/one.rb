# Given two arrays of strings, return a new string that contains every combination of a string from the first array concatenated with a string from the second array.

# Input: ["a", "b", "c"], ["d", "e", "f", "g"]
# Output: ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"]

def mesh(arr1, arr2)
  new_arr = []
  arr1.each { |x| arr2.each { |y| new_arr << (x + y) } }
  new_arr
end

p mesh(["a", "b", "c"], ["d", "e", "f", "g"])
