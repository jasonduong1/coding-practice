def solution(text)
  arr = text.scan(/[A-Za-z]+/)
  arr.max_by(&:length)
end
