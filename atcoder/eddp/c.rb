n = gets.to_i
array = []

n.times do
  array << gets.split.map(&:to_i)
end

dp = []
dp[0] = [0, 0, 0]

(1..n).each do |i|
  day_choices = array[i-1]
  if i == 1
    dp[i] = [day_choices[0], day_choices[1], day_choices[2]]
  else
    a = [dp[i-1][1], dp[i-1][2]].max + day_choices[0]
    b = [dp[i-1][0], dp[i-1][2]].max + day_choices[1]
    c = [dp[i-1][0], dp[i-1][1]].max + day_choices[2]
    dp[i] = [a, b, c]
  end
end

puts dp.last.max