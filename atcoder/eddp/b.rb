n, k = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

dp = []

n.times do |i|
  if i == 0
    dp[i] = 0
  else
    loop_times = k <= i ? k : i
    
    min_candidate = []
    (1..loop_times).each do |j|
      min_candidate << dp[i-j] + (hs[i] - hs[i-j]).abs
    end

    dp[i] = min_candidate.min
  end
end

puts dp.last 