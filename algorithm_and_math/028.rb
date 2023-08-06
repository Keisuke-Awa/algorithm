n = gets.to_i
array = gets.split.map(&:to_i)

dp = []

n.times do |i|
  if i == 0
    dp[i] = 0
  elsif i == 1
    dp[i] = (array[i] - array[i-1]).abs
  else
    from_2 = (array[i] - array[i-2]).abs
    from_1 = (array[i] - array[i-1]).abs
    dp[i] = [from_2 + dp[i-2], from_1 + dp[i-1]].min
  end
end

puts dp.last