n = gets.to_i
distances = gets.split.map(&:to_i)
pathes = []
m = gets.to_i
m.times do
  pathes << gets.to_i
end

cum_sum = [0]
distances.each.with_index(1) do |dis, i|
  cum_sum << dis + cum_sum[i-1]
end

sum = 0
m.times do |i|
  next if i == 0
  start_station_index = pathes[i-1] - 1
  end_station_index = pathes[i] - 1
  sum += (cum_sum[end_station_index] - cum_sum[start_station_index]).abs
end

puts sum