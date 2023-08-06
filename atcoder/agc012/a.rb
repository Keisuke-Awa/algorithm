n = gets.to_i
array = gets.split.map(&:to_i)
array.sort! { |a,b| b <=> a }

sum = 0

n.times do |i|
  sum += array[2 * i + 1]
end

puts sum