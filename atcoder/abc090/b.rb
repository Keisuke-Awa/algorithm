a, b = gets.split.map(&:to_i)
count = 0
(a..b).each do |num|
  count += 1 if num.to_s == num.to_s.reverse
end
puts count