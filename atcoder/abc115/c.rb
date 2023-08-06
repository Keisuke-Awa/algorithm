n, k = gets.split.map(&:to_i)
array = []
n.times do
  array << gets.to_i
end

array.sort!
result = array[k-1] - array[0]

(1..n-k).each do |i|
  result = [(array[i+k-1] - array[i]), result].min
end

puts result