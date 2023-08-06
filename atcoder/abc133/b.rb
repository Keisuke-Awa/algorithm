x, d = gets.split.map(&:to_i)
array = []
x.times do
  array << gets.split.map(&:to_i)
end

count = 0
(0..x-1).to_a.combination(2).to_a.each do |con|
  x_a = array[con[0]]
  x_b = array[con[1]]

  kyori = 0
  d.times do |i|
    kyori += (x_a[i] - x_b[i]) ** 2
  end

  count += 1 if kyori == Math.sqrt(kyori).to_i ** 2
end

puts count