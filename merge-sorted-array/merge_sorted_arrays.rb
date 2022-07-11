# Given two sorted arrays, merge the second array into the first array while ensuring that the first array remains sorted. Do not use any built-in sort methods.

# Input :
# A : [1, 5, 8]
# B : [6, 9]

# Modified A : [1, 5, 6, 8, 9]

# def mergesortedarrays(arr1, arr2)
#   arr2.each { |x| arr1.each_with_index { |y, i| arr1.insert(i, x) if x > y } }
#   return arr1
# end
def mergesortedarrays(arr1, arr2)
  arr2.each do |y|
    index = 0
    current_length = arr1.length
    while arr1.length == current_length
      if y > arr1[index] && index == arr1.length - 1
        arr1 << y
      elsif y > arr1[index]
        index += 1
      else
        arr1.insert(index, y)
      end
    end
  end
  arr1
end

p mergesortedarrays([1, 5, 8], [6, 9])
p mergesortedarrays([7, 9, 10], [6, 9])
p mergesortedarrays([7, 9, 10], [8, 9, 11])
