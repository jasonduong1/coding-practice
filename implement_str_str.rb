# 28.Implement strStr()

# Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

# Example 1:
# Input: haystack = "hello", needle = "ll"
# Output: 2

# Example 2:
# Input: haystack = "aaaaa", needle = "bba"
# Output: -1

def str_str(haystack, needle)
  contain = haystack.include?(needle)
  if contain
    return haystack.index(needle)
  else
    return -1
  end
end

p str_str("hello", "ll")
p str_str("aaaaa", "bba")
