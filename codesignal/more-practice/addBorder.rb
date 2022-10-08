def solution(picture)
  framed_picture = []
  horizontal = "*" * (picture[0].size + 2)
  framed = picture.map { |pic| "*#{pic}*" }
  framed_picture.push(horizontal, framed, horizontal)
  framed_picture.flatten
end
