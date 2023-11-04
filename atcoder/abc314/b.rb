n = gets.to_i
c_array = []
a_array = []
n.times do
  c_array << gets.to_i
  a_array << gets.split.map(&:to_i)
end
x = gets.to_i

result_array = []
a_array.each do |arr|
  if arr.include?(x)
    result_array << arr.length
  else
    result_array << 100
  end
end

min = result_array.sort.first
if min == 100
  puts "0"
  puts ""
else
  index = []
  result_array.each.with_index(1) do |ele, i|
    index << i if ele == min
  end
  puts index.length
  puts index.join(" ")
end
