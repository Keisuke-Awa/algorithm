n = gets.to_i

array = []
n.times do
  array << gets.split.map(&:to_i)
end

factorial = 1
(1..n).each do |i|
  factorial *= i
end

combination = (1..n).to_a.combination(2).to_a

kyori = combination.map do |arr|
  (array[arr[0]-1][0] - array[arr[1]-1][0]) ** 2 + (array[arr[0]-1][1] - array[arr[1]-1][1]) ** 2
end

keisu = factorial * (n - 1) / combination.length

puts kyori.sum(0) { |e| keisu * Math.sqrt(e) } / factorial