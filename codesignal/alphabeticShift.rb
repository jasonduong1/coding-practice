def solution(inputString)
  alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a"]
  new_str = ""
  array = inputString.split("")
  for letter in array
    index = alphabet.index(letter)
    new_str += alphabet[index + 1]
  end
  new_str
end
