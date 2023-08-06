n = gets.to_i

array = []
(n+1).times do |i|
  if i == 0
    array << 2
  elsif i == 1
    array << 1
  else
    array << array[i - 2] + array[i - 1]
  end
end

puts array[n]
