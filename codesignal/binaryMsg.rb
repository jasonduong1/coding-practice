def solution(code)
  code.scan(/\d{8}/).map { |chunk| chunk.to_i(2).chr }.join
end
