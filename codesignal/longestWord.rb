def solution(text)
  arr = text.split(" ")
  arr2 = arr.map { |word| word.sub(/\W+/, "") }
  arr2.max_by(&:length)
end
