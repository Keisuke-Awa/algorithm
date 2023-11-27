n, m = gets.split.map(&:to_i)
array = []
m.times do
  array << gets.split.map(&:to_i)
end

result = -1

start_num =
  if n == 1
    0
  elsif n == 2
    10
  elsif n == 3
    100
  end

end_num =
  if n == 1
    9
  elsif n == 2
    99
  elsif n == 3
    999
  end

(start_num..end_num).each do |i|
  nums = i.digits.reverse
  checker = array.map { |ele| nums[ele[0] - 1] == ele[1] }

  if checker.all?(true)
    result = i
    break
  end
end

puts result