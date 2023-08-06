n = gets.to_i
max = n.digits.sum

(1..n).each do |i|
  max = i.digits.sum if i.digits.sum > max
end
puts max