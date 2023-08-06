s = gets.chomp

nums = []
(s.length - 2).times do |i|
  nums << s.slice(i, 3).to_i
end

min = 753
nums.each do |num|
  min = [(753 - num).abs, min].min
end

puts min