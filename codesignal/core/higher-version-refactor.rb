def solution(ver1, ver2)
  array1, array2 = [ver1, ver2].map { |v| v.split(".").map(&:to_i) }
  (array1 <=> array2) == 1
end
