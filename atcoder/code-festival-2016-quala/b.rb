n = gets.to_i
array = gets.split.map(&:to_i)

counter = 0
array.each.with_index(1) do |ele, i|
  counter += 1 if array[ele-1] == i
end

puts counter / 2