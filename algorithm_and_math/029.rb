n = gets.to_i

dp = []

(0..n).each do |i|
  if i == 0
    dp[i] = 1
  elsif i == 1
    dp[i] = 1
  else
    dp[i] = dp[i-2] + dp[i-1]
  end
end

puts dp.last