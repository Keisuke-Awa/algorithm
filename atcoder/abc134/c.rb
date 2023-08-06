n = gets.split.map(&:to_i)
array = []
n.times do
  array << gets.to_i
end

dp_left = []
array.each.with_index do |ele, i|
  if i == 0
    dp_left << ele
  else
    dp_left << [dp_left[i - 1], ele].max
  end
end

dp_right = []
array.reverse.each.with_index do |ele, i|
  if i == 0
    dp_right << ele
  else
    dp_right << [dp_right[i - 1], ele].max
  end
end

dp_right.reverse!

n.times do |j|
  if j == 0
    puts dp_right[1]
  elsif j == n - 1
    puts dp_left[-2]
  else
    puts [dp_left[j-1], dp_right[j+1]].max
  end
end