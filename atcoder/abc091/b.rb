n = gets.to_i
blue_cards = []
n.times do
  blue_cards << gets.chomp
end

m = gets.to_i
red_cards = []
m.times do
  red_cards << gets.chomp
end

counter = {}
blue_cards.each do |c|
  if counter[c].nil?
    counter[c] = 1
  else
    counter[c] += 1
  end
end

red_cards.each do |c|
  if counter[c].nil?
    counter[c] = -1
  else
    counter[c] -= 1
  end
end

result = []
counter.each do |k, v|
  result << v
end
puts result.sort.last >= 0 ? result.sort.last : 0

