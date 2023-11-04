n = gets.to_i
min = n
(1..Math.sqrt(n).to_i).each do |i|
  if n % i == 0
    kyori = (i - 1) + (n / i - 1)
    min = [kyori, min].min
  end
end

puts min