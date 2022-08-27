class RotationalCipher
  @alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  def self.rotate(string, number)
    return (string) if number == 26 || number == 0
    slice = @alphabet.slice(0, number)
    cipher_array = @alphabet.drop(number) + slice
    cipher_hash = { "0" => "0", "1" => "1", "2" => "2", "3" => "3", "4" => "4", "5" => "5", "6" => "6", "7" => "7", "8" => "8", "9" => "9", "!" => "!", "." => ".", "," => ",", "'" => "'", " " => " " }
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
    return cipher_string_array.join("")
  end
end

p RotationalCipher.rotate("the", 13)
p RotationalCipher.rotate("Omg", 5)
p RotationalCipher.rotate("hello there", 5)

# does not currently account for capitalized chars
