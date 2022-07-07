# The Collatz Conjecture or 3x+1 problem can be summarized as follows:

# Take any positive integer n. If n is even, divide n by 2 to get n / 2. If n is odd, multiply n by 3 and add 1 to get 3n + 1. Repeat the process indefinitely. The conjecture states that no matter which number you start with, you will always reach 1 eventually.

# Given a number n, return the number of steps required to reach 1.

def collatz(number)
  step = 0
  while number != 1
    if number.even?
      number = number / 2
      step += 1
    else
      number = number * 3 + 1
      step += 1
    end
  end
  step
end

p collatz(12) # eq 9
p collatz(1) # eq 0
p collatz(2) # eq 1
