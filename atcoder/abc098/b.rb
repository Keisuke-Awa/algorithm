# https://atcoder.jp/contests/abc098/tasks/abc098_b

num = gets.to_i
str = gets.chomp.chars

max = 0
(0...(num-1)).each do |n|
  first_arr = str[0..n].uniq
  last_arr = str[(n+1)..].uniq
  duplicate = (first_arr.length + last_arr.length) - first_arr.concat(last_arr).uniq.length
  max = duplicate if duplicate > max
end

puts max