n = gets.to_i
points = []
n.times do
  points << gets.split.map(&:to_i)
end

combinations = (0..n-1).to_a.combination(2).to_a
min = nil
combinations.each do |comb|
  ax, ay = points[comb[0]]
  bx, by = points[comb[1]]
  distance = Math.sqrt((ax - bx) ** 2 + (ay - by) ** 2)
  min = distance if min.nil? || distance < min
end

puts min