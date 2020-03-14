nums = gets.split.map(&:to_i) 
array = []
n = nums[0]
b = nums[1]
r = nums[2]
length = b + r

sho = n / length
amari = n % length
if amari == 0
  puts (b * sho)
elsif amari >= b
  puts (b * sho) + b
else
  puts (b * sho) + amari
end
