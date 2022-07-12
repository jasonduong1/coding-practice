# Given an array of numbers, return true if the array is a "100 Coolio Array", or false if it is not.

# A "100 Coolio Array" meets the following criteria:

# Its first and last numbers add up to 100,
# Its second and second-to-last numbers add up to 100,
# Its third and third-to-last numbers add up to 100,
# and so on and so forth. ? is the middle number in odd number array not taken into account?

# Here are examples of 100 Coolio Arrays:

# [1, 2, 3, 97, 98, 99]
# [90, 20, 70, 100, 30, 80, 10]

def coolio(arr)
  index = 0
  while index < arr.length / 2
    if arr[index] + arr[-index - 1] != 100
      return false
    elsif arr[index] + arr[-index - 1] == 100 && index + 1 == arr.length / 2
      if arr.length % 2 == 0
        return "100 Coolio Array"
      elsif arr.length % 2 != 0 && arr[index + 1] == 100
        return "100 Coolio Array"
      else
        return false
      end
    else
      index += 1
    end
  end
end

p coolio([1, 2, 3, 97, 98, 99])
p coolio([90, 20, 70, 100, 30, 80, 10])
p coolio([1, 2, 3, 4, 5, 6])
p coolio([0, 100])
p coolio([0, 99, 0, 1, 100])
