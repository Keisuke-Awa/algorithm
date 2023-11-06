h, w = gets.split.map(&:to_i)
array = []
h.times do
  array << gets.chomp.chars
end

row_result = []
array.each do |row|
  row_result << row if row.any?(/#/)
end

result = Array.new(row_result.length) { [] }

w.times do |i|
  tmp = []
  row_result.each do |row|
    tmp << row[i]
  end

  if tmp.any?(/#/)
    tmp.each.with_index do |ele, j|
      result[j] << ele
    end
  end
end

result.each do |res|
  puts res.join
end