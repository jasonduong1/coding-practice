class Hamming
  def self.compute(str1, str2)
    raise(ArgumentError) if str1.length != str2.length
    index = 0
    distance = 0
    while index < str1.length
      distance += 1 if str1[index] != str2[index]
      index += 1
    end
    distance
  end
end
