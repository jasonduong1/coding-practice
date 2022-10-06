def solution(matrix)
  total = 0
  matrix.transpose.each do |array|
    array.each { |room| room > 0 ? total += room : break }
  end
  total
end
