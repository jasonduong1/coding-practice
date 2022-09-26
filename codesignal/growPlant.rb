def solution(upSpeed, downSpeed, desiredHeight)
  day = 0
  current_height = 0
  while current_height < desiredHeight
    day += 1
    current_height += upSpeed
    return day if (current_height >= desiredHeight)
    current_height -= downSpeed
  end
  day
end
