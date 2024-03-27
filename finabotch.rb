sequence = [1, 2] # 初期配列

# 数列の3番目から38番目までを生成
(3..38).each do |i|
#<<は配列に要素を追加する
  sequence << sequence[-1] + sequence[-2] - 1
end

# 38番目の要素を取得して出力
puts sequence[37]
