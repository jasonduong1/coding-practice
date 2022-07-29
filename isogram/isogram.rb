class Isogram
  def self.isogram?(input)
    hash = {}
    array = input.downcase.split("") - ["-", " "]
    array.each { |letter| hash[letter] ? (return false) : hash[letter] = true }
    return true
  end
end

p Isogram.isogram?("")
p Isogram.isogram?("isogram")
p Isogram.isogram?("eleven")
p Isogram.isogram?("xyzyz")
p Isogram.isogram?("Emily Jung Schwartzkopf")
p Isogram.isogram?("six-year-old")
