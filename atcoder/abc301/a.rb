n = gets.chomp.to_i
s = gets.chomp.chars

tally = s.tally

if tally["T"] > tally["A"]
  puts "T"
elsif tally["A"] > tally["T"]
  puts "A"
elsif tally["T"] == tally["A"]
  if s.last == ["A"]
    puts "T"
  elsif s.last == ["T"]
    puts "A"
  end
end