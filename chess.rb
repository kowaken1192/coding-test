def count_knight_moves(n)
  board_size = 50
  directions = [[2, 1], [2, -1], [-2, 1], [-2, -1], [1, 2], [1, -2], [-1, 2], [-1, -2]]
  dp = Array.new(n + 1) { Array.new(board_size) { Array.new(board_size, 0) } }
  dp[0][0][0] = 1

  (1..n).each do |step|
    (0...board_size).each do |x|
      (0...board_size).each do |y|
        directions.each do |dx, dy|
          prev_x, prev_y = x - dx, y - dy
          if prev_x.between?(0, board_size - 1) && prev_y.between?(0, board_size - 1)
            dp[step][x][y] += dp[step - 1][prev_x][prev_y]
          end
        end
      end
    end
  end

  count = 0
  (0...board_size).each do |x|
    (0...board_size).each do |y|
      count += 1 if dp[n][x][y] > 0
    end
  end

  count
end

# ナイトを20回動かす
n = 20
puts count_knight_moves(n)
