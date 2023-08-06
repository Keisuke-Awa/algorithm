size = gets.to_i
array = size.times.map { gets.split }

result = {}
array.each.with_index(1) do |val, i|
  if result[val[0]]
    result[val[0]].push([i, val[1].to_i])
  else
    result[val[0]] = []
    result[val[0]].push([i, val[1].to_i])
  end
end

result.sort{|a,b| a <=> b}.to_h.each do |_k, v|
  v.sort { |a, b| b[1] <=> a[1] }.each do |val|
    puts val[0]
  end
end