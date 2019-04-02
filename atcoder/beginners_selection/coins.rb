a = gets.to_i
b = gets.to_i
c = gets.to_i
sum = gets.to_i

count = 0
(0..a).each do |a_num|
  (0..b).each do |b_num|
    (0..c).each do |c_num|
      count += 1 if (500 * a_num) + (100 * b_num) + (50 * c_num) == sum
    end
  end
end
puts count