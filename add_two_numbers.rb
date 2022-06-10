# Input: l1 = [2,4,3], l2 = [5,6,4]
# Output: [7,0,8]
# Explanation: 342 + 465 = 807.

def add_two_numbers(l1, l2)
  reverse_int_l1 = l1.reverse.join.to_i
  reverse_int_l2 = l2.reverse.join.to_i
  reverse_int_sum = reverse_int_l1 + reverse_int_l2
  reverse_arr_sum = reverse_int_sum.to_s.each_char.map(&:to_i)
  arr_sum = reverse_arr_sum.reverse
  return arr_sum
end

# p add_two_numbers([2, 4, 3], [5, 6, 4])

class AddTwoNumbers
  def add!(l1, l2)
    reverse_int_l1 = l1.reverse.join.to_i
    reverse_int_l2 = l2.reverse.join.to_i
    reverse_int_sum = reverse_int_l1 + reverse_int_l2
    reverse_arr_sum = reverse_int_sum.to_s.each_char.map(&:to_i)
    arr_sum = reverse_arr_sum.reverse
  end
end
