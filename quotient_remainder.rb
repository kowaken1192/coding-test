total_sum = 0
(1..600).each do |n|
  tmp1, tmp2 = 77777.divmod(n)
  total_sum += tmp1 + tmp2
end

puts total_sum
