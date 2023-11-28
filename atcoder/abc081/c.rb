n, k = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)
values = array.tally.values.sort

if values.length <= k
  puts 0
else
  diff = values.length - k
  puts values[0..diff-1].sum
end