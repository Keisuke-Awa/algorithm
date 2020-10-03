# https://atcoder.jp/contests/abc156/tasks/abc156_c

num = gets.to_i
people = gets.split.map(&:to_i)

res = []
(people.min..people.max).each do |i|
  # puts i
  sum = people.inject { |result, person| result + (person - i)**2 }
  res << sum
end

puts res.min