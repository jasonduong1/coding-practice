def solution(startTag)
  tag = startTag.split(" ")[0]
  tag += ">" if tag[-1] != ">"
  tag = tag[0] + "/" + tag[1..-1]
end
