def solution(inputString)
  alpha_count = ("a".."z").map { |c| inputString.count(c) }
  alpha_count.reverse == alpha_count.sort
end
