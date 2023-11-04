n = gets.to_i
candies = []
candies << gets.split.map(&:to_i)
candies << gets.split.map(&:to_i)

dp = [[], []]
candies[0].each.with_index do |can, i|
  if i == 0
    dp[0] << can
  else
    dp[0] << dp[0][i-1] + can
  end
end

candies[1].each.with_index do |can, i|
  if i == 0
    dp[1] << dp[0][0] + can
  else
    dp[1] << [dp[1][i-1], dp[0][i]].max + can
  end
end

puts dp[1].last