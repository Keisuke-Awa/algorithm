n = gets.to_i
array = []
n.times do
  array << gets.chomp.chars
end

count = 0

o_row_count = []
o_col_count = Array.new(n, 0)

array.each do |row|
  o_row_count << row.select { |e| e == "o" }.count

  n.times do |i|
    o_col_count[i] += 1 if row[i] == "o"
  end
end

n.times do |i|
  next if o_row_count[i] <= 1

  n.times do |j|
    next if array[i][j] != "o" || o_col_count[j] <= 1

    count += (o_row_count[i] - 1) * (o_col_count[j] - 1)
  end
end

puts count
