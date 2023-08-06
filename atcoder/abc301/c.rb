s = gets.chomp.chars
t = gets.chomp.chars

p s.sort
p t.sort

if !s.include?("@") && !t.include?("@")
  result = s.sort == t.sort ? "Yes" : "No"
else
# elsif s.include?("@") && !t.include?("@")
  p duplicate = s & t
  p s - duplicate
  p t - duplicate
# elsif !s.include?("@") && t.include?("@")
  # p duplicate = t & s
end

puts result