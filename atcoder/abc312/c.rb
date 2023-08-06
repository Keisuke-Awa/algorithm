n = gets.to_i
graph = gets.split.map(&:to_i)

result = []
counter = Array.new(n, 0)

next_point = graph[0]
while true do
  result << next_point

  candidate = graph[next_point - 1]
  if counter[candidate - 1] == 1
    result = result[result.index(candidate)..-1]
    break
  else
    next_point = candidate
    counter[candidate - 1] += 1
  end
end

puts result.length
puts result.join(' ')
