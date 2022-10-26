def solution(legs)
  array = []
  cats = (legs - (legs % 4)) / 4
  while cats >= 0
    array.push((legs - cats * 4) / 2)
    cats -= 1
  end
  array
end
