def solution(picture)
  picture = picture.map { |x| "*#{x}*" }
  picture.unshift("*" * picture[0].size)
  picture.push("*" * picture[0].size)
end
