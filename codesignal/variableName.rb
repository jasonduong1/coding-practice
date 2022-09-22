def solution(name)
  array = name.split("")
  return false if array[0].match(/\d|\s/)
  return false if name.match(/\W/)
  true
end
