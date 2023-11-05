n = gets.to_i
array = gets.split.map(&:to_i)

result = Array.new(array.max+10, 0)
array.each do |ele|
  result[ele-1] += 1
  result[ele] += 1
  result[ele+1] += 1
end

puts result.max