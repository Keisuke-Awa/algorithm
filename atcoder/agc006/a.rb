n = gets.to_i
prefix = gets.chomp
suffix = gets.chomp

result = n * 2
(0..n-1).each do |i|
  if prefix.slice(i..n-1) == suffix.slice(0..(n-1-i))
    result = (n - i) + i * 2
    break
  end
end

puts result

