n, m = gets.split.map(&:to_i)
s = gets.chomp.chars
array = gets.split.map(&:to_i)

pool = Array.new(m+1, nil)
first_index = Array.new(m+1, nil)
result_s = Array.new(n, nil)

s.each.with_index do |char, i|
  color = array[i]
  if pool[color].nil?
    pool[color] = char
    first_index[color] = i
  else
    result_s[i] = pool[color]
    pool[color] = char
  end
end

(1..m).each do |i|
  result_s[first_index[i]] = pool[i]
end

puts result_s.join