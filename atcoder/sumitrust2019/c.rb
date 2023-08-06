x = gets.to_i

dp = Array.new(1000010, false)
prices = (100..105).to_a

dp[0] = true
(0..1000000).each do |i|
  if dp[i]
    prices.each do |price|
      dp[i+price] = true
    end
  end
end

puts dp[x] ? 1 : 0