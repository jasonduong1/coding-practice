# Write a function that returns whether a given number is a prime number.

class Primes
  def prime?(n)
    return false if n < 2
    (2..n / 2).none? { |i| n % i == 0 } #not sure what this does
  end
end

p Primes.new.prime?(2)
