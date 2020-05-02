nums = gets.split.map(&:to_i)
votes = gets.split.map(&:to_i)
m = nums[1]

line = votes.inject(:+) / (4 * m)

if votes.sort.reverse[m - 1] < line
  puts 'No'
else
  puts 'Yes'
end