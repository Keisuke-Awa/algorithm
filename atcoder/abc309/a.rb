a, b = gets.split.map(&:to_i)

if b - a == 1 && ((a-1) / 3 == (b-1) / 3)
  puts "Yes"
else
  puts "No"
end
