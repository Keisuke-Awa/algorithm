n = gets.to_i
result = []
n.times do |i|
  result << gets.split.map(&:to_i)
end

ev_result = []
result.each.with_index(1) do |res, i|
  ev_result << [i, res[0] * 1.00 / ((res[0] + res[1]) * 1.00)]
end
ev_result.sort! { |a, b| b[1] <=> a[1] }
puts ev_result.map { |r| r[0] }.join(' ')