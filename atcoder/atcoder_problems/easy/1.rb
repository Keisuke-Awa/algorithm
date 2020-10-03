# https://atcoder.jp/contests/abc139/tasks/abc139_b

a, b = gets.split.map(&:to_i)

min = 1
sum = 1
if b == 1
  puts 0
else
  while true do
    sum = sum + a - 1
    break if sum >= b
    min += 1
  end
  
  puts min
end
