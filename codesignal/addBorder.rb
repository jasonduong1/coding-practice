def solution(picture)
  framed = []
  picture.each { |str| framed.push("*" + str + "*") }
  frame_size = framed[0].length
  tb_frame = ""
  frame_size.times { tb_frame += "*" }
  framed.unshift(tb_frame).push(tb_frame)
end
