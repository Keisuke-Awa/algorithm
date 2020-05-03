num = gets.split.map(&:to_i)
array = []
num[1].times do
  gets.to_i
  array << gets.split.map(&:to_i)
end

puts num[0] - array.flatten.uniq.length
