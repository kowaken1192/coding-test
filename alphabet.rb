n = 48
alphabet = ('A'..'Z').to_a
board = Array.new(n) { Array.new(n, ' ') }
letter_index, top, bottom, left, right = 0, 0, n - 1, 0, n - 1

while top <= bottom && left <= right
  (left..right).each { |i| board[top][i] = alphabet[letter_index % 26]; letter_index += 1 }
  top += 1
  (top..bottom).each { |i| board[i][right] = alphabet[letter_index % 26]; letter_index += 1 }
  right -= 1
  (right).downto(left) { |i| board[bottom][i] = alphabet[letter_index % 26]; letter_index += 1 }
  bottom -= 1
  (bottom).downto(top) { |i| board[i][left] = alphabet[letter_index % 26]; letter_index += 1 }
  left += 1
end

diagonal_string = (0...n).map { |i| board[i][i] }.join
puts diagonal_string
