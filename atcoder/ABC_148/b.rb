n = gets.to_i
a, b = gets.split
str = []

n.times do |i|
  str << "#{a[i]}#{b[i]}"
end

puts str.join