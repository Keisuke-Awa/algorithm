n = gets.to_i
string = gets.chomp.chars

x = 0
max = 0

string.each do |s|
  if s == "I"
    x += 1
  else
    x -= 1
  end

  max = x if x > max
end

puts max