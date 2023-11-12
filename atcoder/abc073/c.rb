n = gets.to_i
array = []
n.times do
  array << gets.to_i
end

result = {}

array.each do |ele|
  if result[ele].nil? || result[ele] == 0
    result[ele] = 1
  else
    result[ele] = 0
  end
end
puts result.values.sum