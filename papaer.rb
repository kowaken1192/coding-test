result = ""

# 1 から 100 までの整数についてループ
(1..100).each do |n|
  if n % 3 == 0
    word = "ZERO"
  elsif n % 3 == 1
    word = "ONE"
  else
    word = "TWO"
  end
  result += word * n
end

extracted_chars = ""
i = 0

#16833 文字までwhileメソッドが続く
while i < result.length
  if i + 400
    extracted_chars += result[i + 399]
  end
  i += 1000
end

puts extracted_chars
