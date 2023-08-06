n = gets.to_i

count = 0
checked = []
n.times do
  str = gets.chomp
  unless checked.include?(str)
    count += 1
    checked << str
    checked << str.reverse
  end
end

puts count
# array.uniq!

# deleted = []

# array.each do |str|
#   reversed = str.reverse
#   next if str == reversed || deleted.include?(str)

#   deleted << reversed
# end

# puts array.delete_if { |e| deleted.include? e }.length
