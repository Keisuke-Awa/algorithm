s = gets.chomp.chars.map(&:to_i)

zero_count = 0
next_tile = 0
s.each do |tile|
  zero_count += 1 if tile != next_tile

  next_tile = next_tile == 0 ? 1 : 0
end

one_count = 0
next_tile = 1

s.each do |tile|

  one_count += 1 if tile != next_tile

  next_tile = next_tile == 0 ? 1 : 0
end

puts [zero_count, one_count].min