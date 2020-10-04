# https://atcoder.jp/contests/abc156/tasks/abc156_c

num = gets.to_i
people = gets.split.map(&:to_i)

res = []
(people.min..people.max).each do |i|
  sum = 0
  people.each do |person|
    kyori = person - i
    sum = sum + kyori**2
  end
  res << sum
end

puts res.min