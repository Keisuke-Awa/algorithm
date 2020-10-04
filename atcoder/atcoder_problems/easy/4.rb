# https://atcoder.jp/contests/sumitrust2019/tasks/sumitb2019_b

n = gets.to_i
result = 0
(1..n).each do |i|
  kakaku = (i * 1.08).floor.to_i
  result = i if kakaku == n
  break if result != 0
end

if result == 0
  puts ':('
else
  puts result
end