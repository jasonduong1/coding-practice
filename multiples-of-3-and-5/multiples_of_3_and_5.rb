# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def sumofmultiplesof3and5(number)
  sum = 0
  (3..number).each do |x|
    if x % 3 == 0 || x % 5 == 0
      sum += x
    end
  end
  sum
end

p sumofmultiplesof3and5(9)
p sumofmultiplesof3and5(999)
