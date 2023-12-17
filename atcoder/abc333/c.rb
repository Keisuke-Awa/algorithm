n = gets.to_i

base = [1, 11, 111, 1111, 11111, 111111, 1111111, 11111111, 111111111, 1111111111, 11111111111, 111111111111, 1111111111111]
comb_base = []
base.each do |ele|
  3.times do
    comb_base << ele
  end
end

result = []
comb_base.to_a.combination(3).to_a.each do |e|
  result << e[0] + e[1] + e[2]
end

puts result.uniq.sort[n-1]