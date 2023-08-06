h,w = gets.split.map(&:to_i)
array = []
h.times do
  array << gets.chomp.chars
end
result_array = []
result_array << Array.new(w+2, "#")
array.each do |ele|
  tmp_array = ele
  tmp_array.unshift("#")
  tmp_array << "#"
  result_array << tmp_array
end

result_array << Array.new(w+2, "#")


result_array.each { |ele| puts ele.join() }