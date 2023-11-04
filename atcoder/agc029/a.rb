s = gets.chomp.chars

w_index = 0
sum = 0
s.each.with_index do |stone, i|
  if stone == 'W'
    sum += i - w_index
    w_index += 1
  end
end

puts sum