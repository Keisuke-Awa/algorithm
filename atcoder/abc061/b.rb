n, m = gets.split.map(&:to_i)
roads = []
m.times do
  roads << gets.split.map(&:to_i)
end

result_hash = roads.map { |ele| ele.sort }.flatten.group_by(&:itself)
n.times do |i|
  if result_hash[i+1].nil?
    puts 0
  else
    puts result_hash[i+1].size
  end
end