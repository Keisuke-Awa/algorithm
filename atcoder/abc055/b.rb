n = gets.to_i

result = 1
(1..n).each do |i|
  result = i * result % 1000000007
end

puts result