n = gets.to_i
array = gets.split.map(&:to_i)

max = array.max


if max != array[0]
  puts max - array[0] + 1
else
  if array.count(max) == 1
    puts 0
  else
    puts 1
  end
end
