w = gets.chomp.chars
puts w.group_by(&:itself).map { |_k, v| v.size.even? }.uniq == [true] ? "Yes" : "No"
