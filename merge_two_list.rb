# 21.Merge Two Sorted Lists

# Example 1:
# Input: list1 = [1,2,4], list2 = [1,3,4]
# Output: [1,1,2,3,4,4]

# Example 2:
# Input: list1 = [], list2 = []
# Output: []

# Example 3:
# Input: list1 = [], list2 = [0]
# Output: [0]

def merge_two_lists(list1, list2)
  merge_list = list1 + list2
  return merge_list.sort
end

# p [1, 2, 3].push(*[2, 3, 4]).sort
# p [1, 2, 3] + [2, 3, 4]
p merge_two_lists([1, 2, 4], [1, 3, 4])
p merge_two_lists([], [])
p merge_two_lists([], [0])
