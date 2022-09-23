def solution(inputString)
  alphabet = ("a".."z").to_a << "a"
  new_str = ""
  inputString.chars.map { |letter| new_str += alphabet[alphabet.index(letter) + 1] }
  new_str
end
