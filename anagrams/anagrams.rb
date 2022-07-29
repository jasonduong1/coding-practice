# Given two strings, return true if they are anagrams of each other, and false if they are not. An anagram is a word, phrase, or name formed by rearranging the letters of another, such as cinema, formed from iceman.

# Do not use any built-in sort methods.

# Input: “silent”, “listen”
# Output: true

# Input: “frog”, “bear”
# Output: false

def anagram?(string1, string2)
  hash = {}
  array1 = string1.split("")
  array2 = string2.split("")
  array1.each { |letter| hash[letter] ? hash[letter] += 1 : hash[letter] = 1 }
  array2.each do |letter|
    !hash[letter] ? (return false) : hash[letter] -= 1
    (return false) if hash[letter] == -1
  end
  return true
end

p anagram?("silent", "listen")
p anagram?("frog", "bear")
p anagram?("rar", "arr")
p anagram?("rar", "arr")
p anagram?("sadder", "dreads")
p anagram?("olo", "lol")
