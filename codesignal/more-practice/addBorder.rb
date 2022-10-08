def solution(picture)
  horizontal = "*" * (picture[0].size + 2)
  framed = picture.map { |pic| "*#{pic}*" }
  [horizontal] + framed + [horizontal]
end
