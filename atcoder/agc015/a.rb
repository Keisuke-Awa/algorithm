n, a, b = gets.split.map(&:to_i)

max = b * (n-1) + a
min = a * (n-1) + b
if max - min + 1 >= 0
  puts max - min + 1
else
  puts 0
end

