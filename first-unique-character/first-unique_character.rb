# Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Examples:

# s = "leetcode"
# return 0.
# (The "l" is the first character that only appears once in the string, and appears at index 0.)

# s = "loveleetcode",
# return 2.
# (The "l" and "o" are repeated, so the first non-repeating character is the "v", which is at index 2.)

# Note: You may assume the string contain only lowercase letters.

def first_unique_character(string)
  characters = string.split("")
  hash = {}
  characters.each { |letter| hash[letter] ? hash[letter] += 1 : hash[letter] = 1 }
  hash.key(1) ? string.index(hash.key(1)) : -1
end

p first_unique_character("leetcode")
p first_unique_character("loveleetcode")
p first_unique_character("lolol")
