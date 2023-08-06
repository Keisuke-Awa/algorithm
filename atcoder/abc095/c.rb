a, b, c, x, y = gets.split.map(&:to_i)

result = 0
if c * 2 < a + b
  if x >= y
    result = y * c * 2 + (x - y) * [a, c * 2].min
  else
    result = x * c * 2 + (y - x) * [b, c * 2].min
  end
else
  result = a * x + b * y
end

puts result