def solution(st)
  for i in (0...st.length)
    temp_str = st + st[0...i].reverse
    return temp_str if temp_str.reverse == temp_str
  end
end
