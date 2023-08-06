n, m = gets.split.map(&:to_i)
array = []
n.times do
  array << gets.split.map(&:to_i)[1..-1]
end

count = 0
array.flatten.group_by { |ele| ele % m }.each do |_k, v|
  count += 1 if v.size == n
end
puts count