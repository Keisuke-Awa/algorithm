n = gets.to_i
d, x = gets.split.map(&:to_i)
array = []
n.times do
  array << gets.to_i
end

sum = 0
array.each do |ele|
  counter = 0
  day = 0

  while true do
    day = counter * ele + 1

    break if day > d
    sum += 1
    counter += 1
  end
end

puts sum + x