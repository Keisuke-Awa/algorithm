n, t = gets.split.map(&:to_i)
times = gets.split.map(&:to_i)

sum = 0
n.times do |i|
  if i == n - 1
    sum += t
  else
    sabun = times[i+1] - times[i]
    if sabun >= t
      sum += t
    else
      sum += sabun
    end
  end
end

puts sum