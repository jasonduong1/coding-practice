def solution(inputString)
  inputString.tr(("a".."z").to_a.join, ("a".."z").to_a.reverse.join)
end
