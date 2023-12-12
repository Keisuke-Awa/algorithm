s = gets.chomp.chars
t = gets.chomp.chars

if s.sort.join < t.sort.reverse.join
  puts "Yes"
else
  puts "No"
end