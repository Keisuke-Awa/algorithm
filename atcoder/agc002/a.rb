a, b = gets.split.map(&:to_i)

if a > 0
  puts "Positive"
elsif a <= 0 && b >= 0
  puts "Zero"
else
  if (b - a + 1).odd?
    puts "Negative"
  else
    puts "Positive"
  end
end