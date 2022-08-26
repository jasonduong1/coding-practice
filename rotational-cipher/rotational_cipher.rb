class RotationCipher
  @alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  def self.rotate(string, number)
    return (string) if number == 26 || number == 0
    slice = @alphabet.slice(0, number)
    cipher_array = @alphabet.drop(number) + slice
    cipher_hash = {}
    index = 0
    @alphabet.each do |x|
      cipher_hash[x] = cipher_array[index]
      index += 1
    end
    return (cipher_hash[string]) if string.length == 1
    string_array = string.downcase.split("")
    cipher_string_array = []
    string_array.each do |x|
      cipher_string_array << cipher_hash[x]
    end
    return cipher_string_array
  end
end

p RotationCipher.rotate("the", 13)
p RotationCipher.rotate("Omg", 5)
p RotationCipher.rotate("hello there", 5)

# need to convert array to string
# does not currently account for capitalized chars
# does not account for special characters
