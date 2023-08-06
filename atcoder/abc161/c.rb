nums = gets.split.map(&:to_i)
n = nums[0]
k = nums[1]


if n % k == 0
  puts 0
else
  puts [n % k, ((n % k) - k).abs].min
end

# result = n
# x = n

# if k == 1
#   puts 0
# else
#   while true do
#     x = (result - k).abs

#     if x < result || x == 0
#       result = x
#     else
#       break
#     end
#   end

#   puts result
# end
