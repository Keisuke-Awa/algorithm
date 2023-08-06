n, l = gets.split.map(&:to_i)
strings = []
n.times do
  strings << gets.chomp
end

puts strings.sort.join
