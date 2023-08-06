a, b, m = gets.split.map(&:to_i)
refs = gets.split.map(&:to_i)
micros = gets.split.map(&:to_i)

coupons = []
m.times do
  coupons << gets.split.map(&:to_i)
end

minimum_sum = refs.min + micros.

coupons.each do |cou|
  sum = refs[cou[0]-1] + micros[cou[1]-1] - cou[2]
  minimum_sum = sum if sum < minimum_sum
end

puts minimum_sum