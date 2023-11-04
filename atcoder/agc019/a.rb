q, h, s, d = gets.split.map(&:to_i)
n = gets.to_i

# 1リットルの買い方を判断
one_l = [q * 4, h * 2, s].min
two_l = [one_l * 2, d].min

if n.even?
  puts [one_l * n, two_l * n / 2].min
else
  puts [one_l * n, two_l * (n - 1) / 2].min + one_l
end