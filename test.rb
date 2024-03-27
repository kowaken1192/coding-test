def min_divisor(n)
  return n if n == 2
  (2..Math.sqrt(n).to_i).each do |i|
    return i if n % i == 0
  end
  n
end

def sort_numbers
  numbers = (2..1_000_000).to_a
  sorted_numbers = numbers.sort_by { |n| [-min_divisor(n), -n] }
  sorted_numbers[250000] # 配列は0から始まるため、250001番目はインデックス250000です
end

puts sort_numbers
