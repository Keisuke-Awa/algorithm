n = gets.to_i
strings = gets.chomp
q = gets.to_i


array = []
q.times do
  array << gets.split
end

last_conversion_index = q - array.reverse.find_index { |ele| [2,3].include? ele[0].to_i } - 1
zenhan = array[0..last_conversion_index].select { |ele| ele[0] == '1' }
kouhan = array[last_conversion_index+1..-1]
zenhan.each do |t|
  strings[t[1].to_i - 1] = t[2]
end

if array[last_conversion_index][0] == '2'
  strings.downcase!
elsif array[last_conversion_index][0] == '3'
  strings.upcase!
end

kouhan.each do |t|
  strings[t[1].to_i - 1] = t[2]
end

puts strings
