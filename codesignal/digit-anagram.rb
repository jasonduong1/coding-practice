# Given an array of integers a, your task is to count the number of pairs i and j (where 0 ≤ i < j < a.length), such that a[i] and a[j] are digit anagrams.

# Two integers are considered to be digit anagrams if they contain the same digits. In other words, one can be obtained from the other by rearranging the digits (or trivially, if the numbers are equal). For example, 54275 and 45572 are digit anagrams, but 321 and 782 are not (since they don't contain the same digits). 220 and 22 are also not considered as digit anagrams, since they don't even have the same number of digits.

# Example

# For a = [25, 35, 872, 228, 53, 278, 872], the output should be solution(a) = 4.

# There are 4 pairs of digit anagrams:

# a[1] = 35 and a[4] = 53 (i = 1 and j = 4),
# a[2] = 872 and a[5] = 278 (i = 2 and j = 5),
# a[2] = 872 and a[6] = 872 (i = 2 and j = 6),
# a[5] = 278 and a[6] = 872 (i = 5 and j = 6).

# Input:
# a: [25, 35, 872, 228, 53, 278, 872]
# Expected Output:
# 4

# Input:
# a: [30, 72, 3, 227]
# Expected Output:
# 0

# Input:
# a: [1, 1, 1, 1, 1]
# Expected Output:
# 10

# Input:
# a: [0, 5, 50, 7, 0, 550, 500, 55, 11]
# Expected Output:
# 1

# compare first element sorted with remaining elements sorted
# drop first element when compared
# compare till array length is = 2
# use summation (n*n +n)/2

def anagram(array)
  hash = {}
  short_array = []
  output = 0
  array.each do |x|
    sorted_x = x.to_s.split("").sort.join()
    hash[sorted_x] ? hash[sorted_x] += 1 : hash[sorted_x] = 0
  end
  hash.delete_if { |_, v| v == 0 }
  hash.map { |_, v| short_array.push(v) }
  short_array.each { |x| output += ((x * x + x) / 2) }
  output
end

p anagram([25, 35, 872, 228, 53, 278, 872])
p anagram([30, 72, 3, 227])
p anagram([1, 1, 1, 1, 1])
p anagram([0, 5, 50, 7, 0, 550, 500, 55, 11])
