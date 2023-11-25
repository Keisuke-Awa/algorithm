n, l = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)

count = 0
array.each do |ele|
  count += 1 if ele >= l
end

puts count