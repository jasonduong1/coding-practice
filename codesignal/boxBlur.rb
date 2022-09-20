def solution(image)
  c = 0
  d = 2

  blur = []

  while d < image.length
    a = 0
    b = 2

    blur << []

    while b < image[0].length
      total = 0

      image[c..d].each do |row|
        total += row[a..b].reduce(&:+)
      end

      blur[c] << total / 9

      a += 1
      b += 1
    end

    c += 1
    d += 1
  end
  blur
end
