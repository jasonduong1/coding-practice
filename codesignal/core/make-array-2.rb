def solution(statues)
  small = statues.sort[0]
  large = statues.sort[-1]
  large - small - statues.size + 1
end
