n = gets.to_i
balls = gets.split.map(&:to_i)

count_hash = {}
balls.each do |ball|
  if count_hash[ball] == nil
    count_hash[ball] = 1
  else
    count_hash[ball] += 1
  end
end

all_result = 0
count_hash.each do |_, val|
  all_result += val * (val - 1) / 2
end

balls.each do |ball|
  n = count_hash[ball]
  puts all_result - (n * (n - 1) / 2) + ((n - 1) * (n - 2) / 2)
end