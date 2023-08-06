nums = gets.split.map(&:to_i)
houses = gets.split.map(&:to_i)
zentai = nums[0]
saidai = 0
(nums[1] - 1).times do |i|
  sabun = houses[i + 1] - houses[i]
  saidai = sabun if sabun > saidai
end

sabun = zentai - houses[nums[1]-1] + houses[0]
saidai = sabun if sabun > saidai

puts zentai - saidai