a, b = gets.split
product = a.to_i * b.to_i
puts product % 2 == 0 ? 'Even' : 'Odd'