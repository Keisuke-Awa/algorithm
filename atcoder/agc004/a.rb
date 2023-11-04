array = gets.split.map(&:to_i)
array.sort!
if array[2].even?
  puts 0
else
  puts array[0] * array[1]
end