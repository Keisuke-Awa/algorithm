M, D = gets.split.map(&:to_i)
y, m, d = gets.split.map(&:to_i)

n_y = y
n_m = m
n_d = d

if m == M && d == D
  n_y += 1
  n_m = 1
  n_d = 1
elsif d == D
  n_m += 1
  n_d = 1
else
  n_d += 1
end

puts "#{n_y} #{n_m} #{n_d}"