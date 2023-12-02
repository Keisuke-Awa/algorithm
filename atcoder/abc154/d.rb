n, k = gets.split.map(&:to_i)
dices = gets.split.map(&:to_i)


max = -1

calculated_dices = dices.map { |d| d * (d + 1) / d.to_f / 2 }

# 最初のやつ
max = calculated_dices[0..k-1].sum
before = max
(1..n-k).each do |i|
  sum = before - calculated_dices[i-1] + calculated_dices[i+k-1]
  before = sum
  max = sum if sum > max
end

puts max