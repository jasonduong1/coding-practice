def solution(a)
  people = a.select { |v| v > 0 }.sort
  a.map { |v| v > 0 ? people.shift : -1 }
end
