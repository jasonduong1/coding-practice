# Given a string, write a function that returns a copy of the original string that has every other character capitalized. (Capitalization should begin with the second character.)

#   Input: “hello, how are your porcupines today?”
#   Output: “hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?”

# def alternate(input)
#   input_array = input.split("")
#   output_array = []
#   index = 0
#   while index < input_array.length
#     if index.even?
#       output_array << input_array[index].downcase
#     else
#       output_array << input_array[index].upcase
#     end
#     index += 1
#   end
#   output_array.join
# end
class AlternateCapitals
  def alternate!(input)
    (0...input.size).each do |index|
      input[index] = index.even? ? input[index].downcase : input[index].upcase
    end
    input
  end
end

# p alternate("hello, how are your porcupines today?")
# p alternate("hello")
