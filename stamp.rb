# 各切手の価値と枚数
stamps = { 205 => 30, 82 => 40, 30 => 30 }

possible_sums = Set.new([0]) # 初期状態として0円を追加 205円の切手を一切買わない場合などの状況を想定するため
new_sums = Set.new

stamps.each do |money, count|
  (1..count).each do |i|
    #possible_sumには既存の数値が入る
    possible_sums.each do |sum|
      new_sum =  sum + money * i
      # new_sumsに一時的に要素を保存
      new_sums << new_sum
    end
  end
  #すべての保存
  possible_sums.merge(new_sums)
end

puts possible_sums.size - 1
