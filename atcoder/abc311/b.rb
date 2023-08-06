n, d = gets.split.map(&:to_i)
array = []
n.times do
  array << gets.chomp.chars
end

max_count = 0
current_count = 0

d.times do |i|
  tmp = array.map { |ele| ele[i] }.uniq
  if tmp.length == 1 && tmp[0] == "o"
    current_count += 1
  else
    max_count = current_count if current_count > max_count
    current_count = 0
  end
end

puts max_count > current_count ? max_count : current_count
