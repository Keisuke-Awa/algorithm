n, m = gets.split.map(&:to_i)

cards = []
m.times do
  cards << gets.split.map(&:to_i)
end

start_max = cards.map{ |ele| ele[0]}.max
end_min = cards.map{ |ele| ele[1]}.min

if start_max > end_min
  puts 0
else
  puts ((1..n).to_a & (start_max..end_min).to_a).length
end
