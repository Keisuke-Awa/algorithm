array = gets.split.map(&:to_i)
array.sort!

counter = array[2] - array[1]

sabun = array[2] - array[0] - counter
if sabun == 0
  counter += 0
elsif sabun.even?
  counter += sabun / 2
else
  counter += (sabun + 1) / 2 + 1
end

puts counter