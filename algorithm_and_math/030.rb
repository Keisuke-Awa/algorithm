n, w = gets.split.map(&:to_i)
array = []
n.times do |i|
  array << gets.split.map(&:to_i)
end

p array
dp = []
(0..n).each do |i|
  dp[i] = []

  (0..w).each do |j|
    # i個目までの商品で、重さj以下の価値の最大値を選ぶ
    if i == 0 || j == 0
      dp[i][j] = 0
    # elsif i == 1
    #   dp[i][j] = j >= array[i-1][0] ? array[i-1][1] : 0
    # elsif i == 2
    else
      if j < array[i-1][0]
        dp[i][j] = dp[i-1][j]
      else
        
      end
    end
  end
end

p dp