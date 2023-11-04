class OisisaChecker
  def self.dp(array, first_index, second_index)
    first = array[first_index]
    second = array[second_index]
    manzokudo =
      if first[0] == second[0]
        first[1] >= second[1] ? first[1] + second[1]/2 : second[1] + first[1]/2
      else
        first[1] + second[1]
      end

    [manzokudo, [first_index, second_index]]
  end
end

n = gets.to_i
array = []
n.times do
  array << gets.split.map(&:to_i)
end

dp = []

(2..n).each do |i|
  if i == 2
    dp[i] = OisisaChecker.dp(array, i-2, i-1)
  else
    kouho_1 = OisisaChecker.dp(array, dp[i-1][1][0], i-1)
    kouho_2 = OisisaChecker.dp(array, dp[i-1][1][1], i-1)
    dp[i] = [dp[i-1], kouho_1, kouho_2].max { |a, b| a[0] <=> b[0] }
  end
end

puts dp.last[0]