def solution(cell1, cell2)
  color1 = color(cell1)
  color2 = color(cell2)
  color1 == color2 ? true : false
end

def color(str)
  alpha = ("A".."H").to_a
  a1 = str.split("")
  if alpha.index(a1[0]) % 2 == 0 && a1[1].to_i % 2 == 0
    "white"
  elsif alpha.index(a1[0]) % 2 != 0 && a1[1].to_i % 2 != 0
    "white"
  else
    "black"
  end
end
