array = gets.chomp.chars

result = "None"
("a".."z").each do |str|
  result = str unless array.include? str

  break if result != "None"
end
puts result