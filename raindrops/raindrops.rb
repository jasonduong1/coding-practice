# Instructions
# Your task is to convert a number into a string that contains raindrop sounds corresponding to certain potential factors. A factor is a number that evenly divides into another number, leaving no remainder. The simplest way to test if a one number is a factor of another is to use the modulo operation.

# The rules of raindrops are that if a given number:

# has 3 as a factor, add 'Pling' to the result.
# has 5 as a factor, add 'Plang' to the result.
# has 7 as a factor, add 'Plong' to the result.
# does not have any of 3, 5, or 7 as a factor, the result should be the digits of the number.
# Examples
# 28 has 7 as a factor, but not 3 or 5, so the result would be "Plong".
# 30 has both 3 and 5 as factors, but not 7, so the result would be "PlingPlang".
# 34 is not factored by 3, 5, or 7, so the result would be "34".

class Raindrops
  def self.convert(num)
    string = ""
    string += "Pling" if num % 3 == 0
    string += "Plang" if num % 5 == 0
    string += "Plong" if num % 7 == 0
    string == "" ? (return num.to_s) : (return string)
  end
end

p Raindrops.convert(1) # "1"
p Raindrops.convert(3) # "Pling"
p Raindrops.convert(5) # "Plang"
p Raindrops.convert(7) # "Plong"
p Raindrops.convert(15) # "PlingPlang"
p Raindrops.convert(21) # "PlingPlong"
p Raindrops.convert(35) # "PlangPlong"
p Raindrops.convert(105) # "PlingPlangPlong"
p Raindrops.convert(3125) # "Plang"
