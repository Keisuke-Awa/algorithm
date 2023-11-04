n = gets.to_i
array = gets.split.map(&:to_i)

all = 3 ** n

odd_pattern = 1
array.each do |ele|
  if ele.even?
    odd_pattern *= 2
  end
end

puts all - odd_pattern