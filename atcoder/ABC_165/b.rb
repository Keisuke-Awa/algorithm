target = gets.to_i
n = 1
money = 100

loop do
  money = (money * 1.01).floor
  break if money >= target
  n += 1
end

puts n