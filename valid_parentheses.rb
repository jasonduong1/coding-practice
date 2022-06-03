# 20.Valid Parentheses

# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.

# Example 1:
# Input: s = "()"
# Output: true

# Example 2:
# Input: s = "()[]{}"
# Output: true

# Example 3:
# Input: s = "(]"
# Output: false

def is_valid(s)
  s_str = s.split("")
  par_count = s_str.tally
  if par_count["("] == par_count[")"]
    if par_count["["] == par_count["]"]
      if par_count["{"] == par_count["}"]
        return true
      end
    end
  else
    return false
  end
end

p is_valid("()[]{}")
p is_valid("(]")
p is_valid("()")

# this solution does not account for the placement of the parentheses
