n, s, k = gets.split.map(&:to_i)
orders = []
n.times do
  orders << gets.split.map(&:to_i)
end

sum = 0
orders.each do |order|
  sum += order[0] * order[1]
end

if sum >= s
  puts sum
else
  puts sum + k
end