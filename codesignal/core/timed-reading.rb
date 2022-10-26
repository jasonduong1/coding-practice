def solution(maxLength, text)
  text.scan(/\w+/).count { |word| word.size <= maxLength }
end
