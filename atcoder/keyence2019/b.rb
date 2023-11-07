s = gets.chomp.chars
range = s.length - 7

result = "NO"
8.times do |i|
  copied_s = s.dup
  copied_s.slice!(i, range)

  if copied_s.join == 'keyence'
    result = "YES"
    break
  end
end

puts result