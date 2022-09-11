# You are implementing your own programming language and you've decided to add support for merging strings. A typical merge function would take two strings s1 and s2, and return the lexicographically smallest result that can be obtained by placing the symbols of s2 between the symbols of s1 in such a way that maintains the relative order of the characters in each string.

# For example, if s1 = "super" and s2 = "tower", the result should be merge(s1, s2) = "stouperwer".

# You'd like to make your language more unique, so for your merge function, instead of comparing the characters in the usual lexicographical order, you'll compare them based on how many times they occur in their respective initial strings (fewer occurrences means the character is considered smaller). If the number of occurrences are equal, then the characters should be compared in the usual lexicographical way. If both number of occurences and characters are equal, you should take the characters from the first string to the result. Note that occurrences in the initial strings are compared - they do not change over the merge process.

#   Given two strings s1 and s2, return the result of the special merge function you are implementing.

#   Example

#   For s1 = "dce" and s2 = "cccbd", the output should be
#   solution(s1, s2) = "dcecccbd".
#   All symbols from s1 goes first, because all of them have only 1 occurrence in s1 and c has 3 occurrences in s2.

#   For s1 = "super" and s2 = "tower", the output should be
# solution(s1, s2) = "stouperwer".
# Because in both strings all symbols occur only 1 time, strings are merged as usual. You can find explanation for this example on the image in the description.

# account for 2 things
# 1. alphabetic order
# 2. letters following the ones in comparison (have to check this first)
# convert to ascii value?

def lexi(str1, str2)
  merge = []
  arr1 = str1.split("")
  arr2 = str2.split("")
  while arr1.length != 0 && arr2.length != 0
    if arr1[0] == arr1[1]
      merge.push(arr2[0])
      arr2.slice!(0)
    elsif arr2[0] == arr2[1]
      merge.push(arr1[0])
      arr1.slice!(0)
    else
      if arr1[0].ord > arr2[0].ord
        merge.push(arr2[0])
        arr2.slice!(0)
      else
        merge.push(arr1[0])
        arr1.slice!(0)
      end
    end
  end
  arr1.length == 0 ? merge.push(arr2) : merge.push(arr1)
  merge.flatten.join("")
end

p lexi("dce", "cccbd") # "dcecccbd"
p lexi("super", "tower") # "stouperwer"
p lexi("a", "z") # "az"
p lexi("kkihj", "jbsmfoftph") # "jbsmfoftphkkihj"
