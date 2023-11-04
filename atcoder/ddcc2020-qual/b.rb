n = gets.to_i
array = gets.split.map(&:to_i)

length = array.sum

sum = 0
d_point = -1
array.each.with_index do |ele, i|
  sum += ele
  if sum * 2 >= length
    d_point = i
    break
  end
end

before = length - array[0..d_point-1].sum * 2
middle = array[0..d_point].sum * 2 - length
after = array[0..d_point].sum * 2 - length

puts [before, middle, after].min