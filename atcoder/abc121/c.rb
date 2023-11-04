n, m = gets.split.map(&:to_i)
array = []
n.times do
  array << gets.split.map(&:to_i)
end

array.sort! { |a, b| a[0] <=> b[0] }

counter = 0
sum = 0
array.each do |arr|
  price = arr[0]
  max = arr[1]

  if m - counter > max
    counter += max
    sum += max * price
  else
    sum += (m - counter) * price
    break
  end
end

puts sum