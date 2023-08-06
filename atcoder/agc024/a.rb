a, b, c, k = gets.split.map(&:to_i)

if k == 0
  result = a - b
else
  result = k.even? ? a - b : b - a
end

puts result <= 10 ** 18 ? result : "Unfair"