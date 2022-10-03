def solution(s)
  str = ""
  count = 1
  for i in 0..s.length
    if s[i] == s[i + 1]
      count += 1
    else
      str += count.to_s if count > 1
      str += s[i]
      count = 1
    end
  end
  str
end
