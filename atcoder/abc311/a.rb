n = gets.to_i
s = gets.chomp.chars

result = []
s.each.with_index(1) do |str, i|
  result << str unless result.include?(str)

  if result.length == 3
    puts i
    break
  end
end

