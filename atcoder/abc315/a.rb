s = gets.chomp.chars
s.delete_if {|ele|  %w[a e i o u].include? ele}
puts s.join('')