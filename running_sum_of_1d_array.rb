# 1480. Running Sum of 1d Array
# Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).

# Return the running sum of nums.

# Example 1:

# Input: nums = [1,2,3,4]
# Output: [1,3,6,10]
# Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
# Example 2:

# Input: nums = [1,1,1,1,1]
# Output: [1,2,3,4,5]
# Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].
# Example 3:

# Input: nums = [3,1,2,10,1]
# Output: [3,4,6,16,17]

def running_sum(nums)
  index = 0
  array = []
  array << nums[0]
  while nums.length != array.length
    x = nums[index + 1] + array[index]
    array << x
    index += 1
  end
  return array
end

p running_sum([1, 2, 3, 4])
