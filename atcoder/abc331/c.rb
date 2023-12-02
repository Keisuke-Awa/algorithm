n = gets.to_i
nums = gets.split.map(&:to_i)

result = []
tally_nums = nums.tally
(1..nums.max).each do |i|
  tally_num = tally_nums[i].nil? ? 0 : tally_nums[i]
  if i == 1
    result << tally_num * i
  else
    result << tally_num * i + result[i-2]
  end
end

sum = nums.sum

puts nums.map { |num| sum - result[num-1] }.join(" ")