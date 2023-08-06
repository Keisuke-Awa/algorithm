n = gets.chomp.to_i
array = gets.split.map(&:to_i)
serparated_array = array.each_slice(7).to_a

result = []
serparated_array.each do |arr|
  result << arr.sum
end

puts result.join(' ')