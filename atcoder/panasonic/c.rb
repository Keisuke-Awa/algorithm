nums = gets.split.map(&:to_i)

if Math.sqrt(nums[0]) + Math.sqrt(nums[1]) < Math.sqrt(nums[2])
  puts 'Yes'
else
  puts 'No'
end