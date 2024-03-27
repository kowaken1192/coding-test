# 初期設定
year = 2007
month = 1
day = 1
# 日曜日からの日数
weekday = 0
# 13日の金曜日を数える
friday_13_count = 0

# 月ごとの日数（うるう年ではない場合）
days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

while true
  # 13日かつ金曜日（日曜日から数えて5日後）ならカウントアップ
  friday_13_count += 1 if day == 13 && weekday == 5

  # 666回目の13日の金曜日を見つけたら終了
  break if friday_13_count == 666

  # 日付を1日進める
  day += 1
  weekday = (weekday + 1) % 7

  # 月末処理
  days_this_month = days_in_month[month - 1]
  # うるう年の2月は29日まである
  days_this_month += 1 if month == 2 && year % 4 == 0

  if day > days_this_month
    day = 1
    month += 1
    # 年末処理
    if month > 12
      month = 1
      year += 1
    end
  end
end

# 結果の表示
puts "#{year}#{format('%02d', month)}#{format('%02d', day)}"
