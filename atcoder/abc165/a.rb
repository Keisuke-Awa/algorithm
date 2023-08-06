k = gets.to_i
array = gets.split.map(&:to_i)

if array[0] % k == 0 || array[1] % k == 0
  puts 'OK'
elsif (k - 1) <= array[1] - array[0]
  puts 'OK'
else
  puts 'NG'
end
