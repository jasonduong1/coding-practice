def solution(cipher)
  decipher = []
  current = ""
  cipher.chars.each do |x|
    current += x
    if current.to_i.between?(97, 122)
      decipher.push(current.to_i)
      current = ""
    end
  end
  decipher.map { |x| x.chr }.join
end
