n, a, b = gets.chomp.split.map(&:to_i)

array = []
range = a..b
(1..n).each do |num|
  array << num if range.include? num.to_s.chars.map(&:to_i).inject(&:+)
end

puts array.inject(&:+)