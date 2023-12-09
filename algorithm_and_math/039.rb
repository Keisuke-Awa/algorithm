n, q = gets.split.map(&:to_i)
data = []
q.times do
  data << gets.split.map(&:to_i)
end

diff = Array.new(n, 0)
data.each do |d|
  diff[d[0]-1] += d[2]
  diff[d[1]] -= d[2] if d[1] != n
end

result = diff[1..-1].map do |ele|
  if ele == 0
    "="
  elsif ele > 0
    "<"
  else
    ">"
  end
end

puts result.join('')
