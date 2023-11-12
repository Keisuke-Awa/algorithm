s = gets.chomp.chars
array = []

s.each.with_index do |char, i|
  if char != "C"
    array << char
    next
  end

  if array[-2..-1] == ["A", "B"]
    array.pop
    array.pop
  else
    array << char
  end
end

puts array.join