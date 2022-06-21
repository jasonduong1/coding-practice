# Given a string of words, write a function that returns a new string that contains the words in reverse order.

# Input: “popcorn is so cool isn’t it yeah i thought so”
# Output: “so thought i yeah it isn’t cool so is popcorn”

class ReverseWord
  def reverse(str)
    arr = str.split(" ")
    arr.reverse.join(" ")
  end
end

p ReverseWord.new.reverse("hello there world")
p ReverseWord.new.reverse("popcorn is so cool isn’t it yeah i thought so")
