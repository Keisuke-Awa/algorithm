s = gets.to_i

count = 1
sum = 0
while true do
  if hp == 1
    sum += count
    break
  else
    hp = hp / 2
    sum += count
    count *= 2
  end
end

puts sum