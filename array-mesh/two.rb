# Given ONE array of strings, return a new array that contains every combination of each string with every other string in the array.

# Input: ["a", "b", "c", "d"]
# Output: ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]

# set up new array
# each loop do
#   remove current element from the loop
#   creates array without current element
#   loop thru that array and add to output
# end

def singlemesh(arr)
  output = []
  arr.each do |x|
    new_arr = arr - [x]
    new_arr.each { |y| output << (x + y) }
  end
  output
end

p singlemesh(["a", "b", "c", "d"])
