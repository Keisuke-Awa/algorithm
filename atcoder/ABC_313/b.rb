n, m = gets.split.map(&:to_i)
array = []
m.times do
  array << gets.split.map(&:to_i)
end

kouho = array.map { |ele| ele[0] }.uniq
kouho_sub = array.map { |ele| ele[1] }.uniq
result = kouho.dup

kouho.each do |k|
  if kouho_sub.include?(k)
    result.delete(k)
  end
end

if result.length == 1
  puts result[0]
else
  puts -1
end