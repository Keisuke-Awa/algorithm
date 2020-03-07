num = gets.to_i
b_array = gets.split.map(&:to_i)
a_array = []
num.times do
  a_array << 'a'
end

hash = {}
b_array.each.with_index do |n, i|
  hash[i] = n
end

b_hash = Hash[ hash.sort_by{ |_, v| v } ]

b_hash.each do |i, v|
  a_array[i] = v if a_array[i] == 'a'
  a_array[i + 1] = v if a_array[i + 1] == 'a'
end

p a_array.inject(:+)
