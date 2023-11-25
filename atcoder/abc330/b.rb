n, l, r = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)

result = []
array.each do |ele|
  if ele >= l && ele <= r
    result << ele
  elsif ele < l
    result << l
  elsif ele > r
    result << r
  end
end

puts result.join(' ')