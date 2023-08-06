a, b = gets.split.map(&:to_i)
s = gets.chomp

regex = /\A\d{#{a}}-\d{#{b}}\z/
puts !!s.match(regex) ? "Yes" : "No"