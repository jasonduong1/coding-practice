def solution(ver1, ver2)
  array1 = ver1.split(".")
  array2 = ver2.split(".")
  return false if ver1 == ver2
  for i in 0..array1.length - 1
    if array1[i].to_i > array2[i].to_i
      return true
    end
    if array1[i].to_i < array2[i].to_i
      return false
    end
  end
end
