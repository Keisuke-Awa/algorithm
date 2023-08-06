n, price, q = gets.split.map(&:to_i)
ds = gets.split.map(&:to_i)

puts [q + ds.min, price].min
