def solution(inputString)
  alphabet = ("a".."z").to_a << "a"
  new_str = ""
  array = inputString.split("")
  for letter in array
    index = alphabet.index(letter)
    new_str += alphabet[index + 1]
  end
  new_str
end
