def solution(inputString)
  inputString == "" ? (return "") : x = inputString
  while x.include?("(")
    endBracket = x.index(")")
    startBracket = x.slice(0, endBracket).rindex("(")
    s = x.slice(startBracket + 1, (endBracket - startBracket - 1))
    reversedS = s.split("").reverse.join
    x = x.slice(0, startBracket) + reversedS + x.slice(endBracket + 1, (x.length - 1 - endBracket))
  end
  x
end
