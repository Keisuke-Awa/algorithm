num = gets.to_i
ps = gets.split.map(&:to_i)
qs = gets.split.map(&:to_i)

all = (1..num).to_a.permutation.to_a
if ps == qs
  puts 0
else
  p_index = all.find_index(ps)
  q_index = all.find_index(qs)
  puts (p_index - q_index).abs
end