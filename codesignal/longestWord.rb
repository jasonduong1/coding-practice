def solution(text)
  arr = text.split(" ")
  arr2 = []
  arr.each { |word| arr2.push(word.sub(/\W+/, "")) }
  arr2.max_by(&:length)
end
