x1, y1, r1 = gets.split.map(&:to_i)
x2, y2, r2 = gets.split.map(&:to_i)

center_distance = Math.sqrt((x1 - x2) ** 2 + (y1 - y2) ** 2)

if center_distance < (r1 - r2).abs
  puts 1
elsif center_distance == (r1 - r2).abs
  puts 2
elsif center_distance == r1 + r2
  puts 4
elsif center_distance > r1 + r2
  puts 5
else
  puts 3
end
