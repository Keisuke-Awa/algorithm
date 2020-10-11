# https://atcoder.jp/contests/abc088/tasks/abc088_b

n = gets.to_i

kaisu = 0
while true do
  break if 2 ** kaisu > n
  kaisu += 1
end

puts 2 ** (kaisu - 1)