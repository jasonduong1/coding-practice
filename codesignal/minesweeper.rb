def solution(matrix)
  output = []
  for y in 0..matrix.length - 1
    row = []
    for x in 0..matrix[0].length - 1
      spot = 0
      # top
      if y - 1 >= 0
        if matrix[y - 1][x] == true
          spot += 1
        end
        # top left
        if x - 1 >= 0
          if matrix[y - 1][x - 1] == true
            spot += 1
          end
        end
        # top right
        if x + 1 < matrix[0].length
          if matrix[y - 1][x + 1] == true
            spot += 1
          end
        end
      end
      # bottom
      if y + 1 < matrix.length
        if matrix[y + 1][x] == true
          spot += 1
        end
        # bottom left
        if x - 1 >= 0
          if matrix[y + 1][x - 1] == true
            spot += 1
          end
        end
        # bottom right
        if x + 1 < matrix[0].length
          if matrix[y + 1][x + 1] == true
            spot += 1
          end
        end
      end
      # left
      if x - 1 >= 0
        if matrix[y][x - 1] == true
          spot += 1
        end
      end
      # right
      if x + 1 < matrix[0].length
        if matrix[y][x + 1] == true
          spot += 1
        end
      end

      row.push(spot)
    end
    output.push(row)
  end
  output
end
