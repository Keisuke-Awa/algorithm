n, m = gets.split.map(&:to_i)
students = []
n.times do
  students << gets.split.map(&:to_i)
end

checkpoints = []
m.times do
  checkpoints << gets.split.map(&:to_i)
end

result = []
students.each do |s|
  min = nil
  min_index = nil
  checkpoints.each.with_index(1) do |check, i|
    kyori = (s[0] - check[0]).abs + (s[1] - check[1]).abs
    if min.nil?
      min = kyori
      min_index = i
    elsif min > kyori
      min = kyori
      min_index = i
    end
  end
  result << min_index
end

result.each { |res| puts res }
