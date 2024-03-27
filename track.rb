# 最大積載量
max_load = 5000
current_load = 0
trucks = 0
weight = 800 # 荷物の重さを800kgから始める

while weight > 0
  #5000を超えた後の処理
  if  current_load + weight > max_load
    trucks += 1
    current_load = weight
  else
    current_load += weight
  end
  weight -= 1 # 次のループで扱う荷物の重さを1kg減らす
end

# 最後のトラックに荷物が積まれている場合、トラックの数を1増やす
trucks += 1 if current_load > 0

# 必要なトラックの台数を出力
puts trucks
