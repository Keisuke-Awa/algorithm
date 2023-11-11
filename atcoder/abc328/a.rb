n, x = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)

sum = 0
array.each do |ele|
  sum += ele if ele <= x
end

puts sum