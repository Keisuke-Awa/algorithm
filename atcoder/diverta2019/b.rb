r, g, b, n = gets.split.map(&:to_i)

r_max = n / r
g_max = n / g

count = 0
(0..r_max).each do |i|
  (0..g_max).each do |j|
    nokori = n - (r * i + g * j)
    if nokori == 0 || ((n - (r * i + g * j)) % b == 0 && (n - (r * i + g * j)) / b > 0)
      count += 1
    end
  end
end

puts count