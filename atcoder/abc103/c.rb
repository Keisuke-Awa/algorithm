n = gets.to_i
array = gets.split.map(&:to_i)

# 全て奇数になったら終わり
counter = 0
array.each do |num|
  while num.even? do
    num = num / 2
    counter += 1
  end
end

puts counter