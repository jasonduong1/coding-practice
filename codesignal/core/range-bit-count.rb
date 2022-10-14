def solution(a, b)
  count = 0
  arr = (a..b).map { |x| x.to_s(2) }
  arr.each do |bin|
    x = bin.split("")
    x.each { |int| count += 1 if int == "1" }
  end
  count
end
