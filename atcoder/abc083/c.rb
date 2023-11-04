x,y = gets.split.map(&:to_i)

count = 0
num = x
while true do
  if num <= y
    count += 1
    num *= 2
  else
    break
  end
end

puts count