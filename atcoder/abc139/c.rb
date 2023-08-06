n = gets.to_i
hs = gets.split.map(&:to_i).reverse

dp = []
hs.each.with_index do |hn, i|
  if i != 0 && hn >= hs[i - 1]
    dp << dp[i - 1] + 1
  else
    dp << 0
  end
end
puts dp.max