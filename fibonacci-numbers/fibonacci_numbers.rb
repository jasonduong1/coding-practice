# Write a function that gives the Nth number of the Fibonacci Sequence. The Fibonacci sequence begins with 0 and 1, and every number thereafter is the sum of the previous two numbers. So the sequence goes like this:

# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, and so on until infinity...

# Input: 9
# Output: 21 (as this is the 9th number of the Fibonacci Sequence)

class FibonacciNumbers
  def place(n)
    array = [0, 1]
    return output = 0 if n == 1
    point = n - 2
    point.times do
      number = array[-1] + array[-2]
      array << number
    end
    output = array[-1]
  end
end

# p FibonacciNumbers.new.place(1)
# p FibonacciNumbers.new.place(2)
# p FibonacciNumbers.new.place(3)
# p FibonacciNumbers.new.place(4)
# p FibonacciNumbers.new.place(5)
# p FibonacciNumbers.new.place(6)
# p FibonacciNumbers.new.place(7)
# p FibonacciNumbers.new.place(8)
# p FibonacciNumbers.new.place(9)
