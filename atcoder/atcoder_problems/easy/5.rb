# https://atcoder.jp/contests/abc121/tasks/abc121_b

n, m, c = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
codes = []
n.times do
  codes << gets.split.map(&:to_i)
end

count = 0
codes.each do |code|
  result = 0
  code.each.with_index do |num, i|
    result += num * bs[i]
  end
  result += c
  count += 1 if result > 0
end

puts count