t = gets.to_i
n = gets.to_i
e_times = []
n.times do
  e_times << gets.split.map(&:to_i)
end

diff = Array.new(t+10, 0)
e_times.each do |ele|
  start_time = ele[0]
  end_time = ele[1]
  diff[start_time] += 1
  diff[end_time] -= 1
end

cum_sum = []
diff.each.with_index do |d, i|
  if i == 0
    cum_sum << d
  else
    cum_sum << cum_sum[i-1] + d
  end
end

cum_sum[0..t-1].each do |num|
  puts num
end