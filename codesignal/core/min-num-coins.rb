def solution(coins, price)
  coins = coins.reverse
  total = 0
  coins.each do |coin|
    remaining = price % coin
    total += (price - remaining) / coin
    break if remaining == 0
    price = remaining
  end
  total
end
